return { -- Code Runner plugin configuration
  'CRAG666/code_runner.nvim',
  dependencies = {
    'akinsho/toggleterm.nvim',
  },
  config = function()
    -- ensure toggleterm is present and set a reasonable default
    pcall(function()
      require('toggleterm').setup {
        size = 100,
        open_mapping = [[<C-t>]],
        autochdir = true,
        shade_terminals = true,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        direction = 'vertical',
        close_on_exit = true,
        shell = vim.o.shell,
      }
    end)

    local ok, cr = pcall(require, 'code_runner')
    if not ok or not cr then
      vim.notify('code_runner.nvim not available', vim.log.levels.ERROR)
      return
    end

    -- Configure code_runner to use toggleterm as backend and define filetype commands
    cr.setup {
      mode = 'toggleterm', -- run using toggleterm.nvim
      focus = true, -- focus on the terminal after running
      startinsert = false,
      term = {
        position = 'horizontal', -- the plugin still accepts these fields
        size = 15,
        -- toggleterm integration is enabled by `mode = "toggleterm"`
      },
      -- Per-filetype run commands.
      -- Strings, tables (series of commands), or functions are supported.
      filetype = {
        -- scripted languages
        python = 'python3 -u $file',
        javascript = 'node $file',
        typescript = 'deno run $file', -- adjust to ts-node if preferred
        lua = 'lua $file',
        sh = 'bash $file',
        zsh = 'zsh $file',

        -- compiled languages
        c = {
          'cd $dir &&',
          'gcc $fileName -o $fileNameWithoutExt &&',
          './$fileNameWithoutExt',
        },
        cpp = {
          'cd $dir &&',
          'g++ -std=c++17 $fileName -o $fileNameWithoutExt &&',
          './$fileNameWithoutExt',
        },
        java = {
          'cd $dir &&',
          'javac $fileName &&',
          'java -cp $dir $fileNameWithoutExt',
        },
        go = 'cd $dir && go run $fileName',
        rust = {
          'cd $dir &&',
          'cargo run',
        },

        -- common build/test runners (adjust per project if needed)
        make = 'make',
      },

      before_run_filetype = function()
        -- optional: add any commands to run before the file (useful to set cwd, env, etc.)
      end,
    }

    -- Recommended keymaps (safe pcall wrappers to avoid startup errors)
    local function nmap(lhs, rhs, desc)
      pcall(function()
        vim.keymap.set('n', lhs, rhs, { noremap = true, silent = true, desc = desc })
      end)
    end

    -- run based on filetype / project (like VSCode "Run")
    nmap('<leader>rr', '<cmd>RunCode<CR>', 'Run filetype / project (RunCode)')

    -- run current file (explicit)
    nmap('<leader>rf', '<cmd>RunFile<CR>', 'Run current file (RunFile)')

    -- close the runner/terminal that code_runner opened
    nmap('<leader>rc', '<cmd>RunClose<CR>', 'Close code runner (RunClose)')

    -- If you prefer Lua functions instead of commands, expose helpers:
    vim.api.nvim_create_user_command('RunFileToggleTerm', function()
      local ok_run, _ = pcall(function()
        require('code_runner').run_filetype()
      end)
      if not ok_run then
        vim.notify('RunFile failed', vim.log.levels.ERROR)
      end
    end, { desc = 'Run current file using code_runner (toggleterm)' })
  end,
}
