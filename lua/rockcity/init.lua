require("rockcity.remap")
require("rockcity.set")

local augroup = vim.api.nvim_create_augroup
local RockcityGroup = augroup('rockcity', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

-- vim.cmd([[autocmd BufRead,BufNewFile *.cshtml set syntax=cs]])

function R(name)
    require("plenary.reload").reload_module(name)
end


autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = RockcityGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

