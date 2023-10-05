local api = require('Comment.api')
-- Toggle in Op-pending mode
vim.keymap.set('n', '<leader>kc', function() api.toggle.linewise.current() end)

local esc = vim.api.nvim_replace_termcodes(
    '<ESC>', true, false, true
)

vim.keymap.set('x', '<leader>kc', function()
    vim.api.nvim_feedkeys(esc, 'nx', false)
    api.toggle.linewise(vim.fn.visualmode())
end)
