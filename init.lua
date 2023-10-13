vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd.colorscheme "gruvbox"

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NonText", { bg = "none" })
-- vim.g.oxocarbon_lua_transparent = true
-- vim.g.oxocarbon_lua_keep_terminal = true
require("rockcity")

-- print("---- NVIM Shortcuts -----")
-- print("of - open float (to see err)")
-- print("yy - Copy whole line")
-- print("p - Paste line")
-- print("Ctrl-W - Delete word")
-- print("dd - Delete line")
-- print("3dd - Delete Next 3 Lines")
-- print("Vjjd - Highlight 3 Next Lines then Delete (k goes other direction")
-- print("= - Apply Indent?")
-- print("Type Line Number then G to go to it")
-- print("Visual block selection then c49 to cut(copy?) 49 lines")
-- print("gc - Apply block comment in visual mode")
-- print("")
-- print("----- NvimTree Shortcuts ------")
-- print("a - Create file/directory (append with / for dir)")
-- print("D - Delete")
-- print("----- Space Shortcuts -----")
-- print("pv - Open NvimTree")
-- print("pg - Goto current file in NvimTree")
-- print("a - Add to Harpoon")
-- print("u - Undo Explorer")
-- print("gs - Git Menu")
-- print("")
-- print("")
-- print("----- Control Shortcuts -----")
-- print("e - Harpoon Menu")
-- print("h, t, n, s - First, Second, etc.. Harpoon File")
-- print("W v/s - v for veritical split window, s for horizontal)")
-- print("W arrow keys - for moving around open windows")
-- print("")
-- print("")
-- print("HAVE TO ESC Before Selecting File in Telescope")
