local lsp = require('lsp-zero').preset({})
local pid = vim.fn.getpid()


lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
    vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
    vim.keymap.set('n', 'gr', function() require('telescope.builtin').lsp_references() end,
        { noremap = true, silent = true })
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.lsp.buf.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.lsp.buf.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.lsp.buf.goto_prev() end, opts)
    vim.keymap.set("n", "<leader><CR>", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.rename() end, opts)
    --vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set("n", "<leader>kd", function() vim.lsp.buf.format() end, opts)
    vim.keymap.set("n", "<leader>rg", function() vim.lsp.buf.organize_imports() end, opts)
    vim.keymap.set("n", "<leader>i",  function() vim.diagnostic.open_float() end, opts)

end)

require('mason').setup({})

require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        lsp.default_setup,
        omnisharp = function()
            require('lspconfig').omnisharp.setup({
                handlers = {
                    ["textDocument/definition"] = require('omnisharp_extended').handler,
                }
            })
        end
    },
})

lsp.setup()
