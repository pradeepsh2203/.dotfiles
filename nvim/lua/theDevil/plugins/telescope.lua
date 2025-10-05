return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim', },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find Files"})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find Buffers"})
        vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, { desc = "Find Document Symbols"})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>pWs', function ()
            word = vim.fn.expand("<cWORD>");
            builtin.grep_string({ search = word});
        end)
        vim.keymap.set('n', '<leader>pws', function ()
            word = vim.fn.expand("<cword>");
            builtin.grep_string({ search = word});
        end)
        vim.keymap.set('n', '<leader>ps', function ()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end)
        vim.keymap.set('n','<leader>vh', builtin.help_tags, {})

        local projects = require("telescope").extensions.project
        vim.keymap.set('n', '<leader>fp', projects.project, { desc = "Find Projects"})

        require('telescope').setup{
            pickers = {
                find_files = {
--                   find_command = {'rg', '--hidden', '--follow', '--glob', '!**/.git/*' }
                    follow = true,
              },
            }
        }
    end
}
