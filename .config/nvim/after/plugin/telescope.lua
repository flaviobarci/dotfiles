local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)


require('telescope').setup({
  defaults = {
    layout_config = {
      horizontal = { width = 0.99, height = 0.99 }
      -- other layout configuration here
    },
    -- other defaults configuration here
  },
  -- other configuration values here
})

