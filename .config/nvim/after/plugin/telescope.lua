local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.cmd('highlight TelescopeBorder guibg=none')
vim.cmd('highlight TelescopeTitle guibg=none')

require('telescope').setup({
    pickers = {
        find_files = {
            theme = "dropdown",
        }
    },
})
