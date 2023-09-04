vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>pg", vim.cmd.NvimTreeFindFile)

vim.keymap.set('n', '<leader>c', 'i<Space>{/*<Space><Space><Space>*/}<Left><Left><Left><Left>')
