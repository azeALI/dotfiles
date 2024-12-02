local map = vim.keymap.set
local M = {
map("i", "jk", "<ESC>"),
map("n", ";", ":"),
map("n", "<A-o>", "<cmd> lua require'jdtls'.organize_imports()<CR>"),
}
return M
