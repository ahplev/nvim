-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- emacs keymap --
vim.keymap.set('i', '<C-f>', '<Right>', {noremap = true, silent = true})
vim.keymap.set('i', '<A-f>', '<C-o>w', {noremap = true, silent = true})
vim.keymap.set('i', '<C-b>', '<Left>', {noremap = true, silent = true})
vim.keymap.set('i', '<A-b>', '<C-o>b', {noremap = true, silent = true})
vim.keymap.set('i', '<C-e>', '<End>', {noremap = true, silent = true})
vim.keymap.set('i', '<C-a>', '<Home>', {noremap = true, silent = true})
vim.keymap.set('i', '<C-n>', '<Down>', {noremap = true, silent = true})
vim.keymap.set('i', '<C-p>', '<Up>', {noremap = true, silent = true})
vim.keymap.set('i', '<C-d>', '<Delete>', {noremap = true, silent = true})
