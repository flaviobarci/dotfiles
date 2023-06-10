local api = require('Comment.api')
-- Toggle in Op-pending mode
vim.keymap.set('n', '<leader>kc', function() api.toggle.linewise.current() end)
