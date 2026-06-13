

vim.g.mapleader = " "

local keymap = vim.keymap
local cmd = vim.cmd

keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")

keymap.set("n", "<leader>e", ":Ex<CR>")

keymap.set("n", "<Esc>", ":noh<CR>")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("t", "<Esc>", [[<C-\><C-n>]])

keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<Cr>")
keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<Cr>")
keymap.set("n", "<leader>bd", "<cmd>bdelete<Cr>")

local function term_at(path)
  cmd("rightbelow vsplit")
  cmd("terminal cd " .. path .. " && bash")
  cmd("startinsert")
end

keymap.set("n", "<leader>rl", function()
  term_at("~/Projects/Lua")
end)

keymap.set("n", "<leader>rc", function()
  term_at("~/Projects/C-Lang")
end)

keymap.set("n", "<leader>sr", ":%s//g<Left><Left>", {
  desc = "Search and Replace"
})








