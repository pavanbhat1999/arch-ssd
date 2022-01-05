local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}
keymap('n', '<f2>', ':term<CR>', opts)
keymap('n', '<f3>', ':UndotreeToggle<CR>', opts)
-- keymap('n', '<f4>', ':Lex<CR>', opts)
-- keymap('n', '<f4>', ':NERDTreeToggle<CR>', opts)
keymap('n', '<f4>', ':NvimTreeFindFileToggle<CR>', opts)
keymap('n', '<leader><Right>', ':vertical resize +5<cr>', opts)
keymap('n', '<leader><Left>', ':vertical resize -5<CR>', opts)
keymap('n', '<C-s>', ':w<CR>', opts)
keymap('i', '<C-s>', '<ESC>:w<CR>', opts)
-- Harpoon Key Mappings
keymap('n', '<leader>ha', ':lua require("harpoon.mark").add_file()<CR>', opts)
keymap('n', '<leader>hl', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)
keymap('n', '<leader>aa', ':Telescope harpoon marks<CR>', opts)
keymap('n', '<leader>hh', ':lua require("harpoon.ui").nav_next()<CR> ', opts)
--- In lsp attach function
keymap("n", "gx", "<cmd>Lspsaga code_action<cr>", {silent = true, noremap = true})
keymap("x", "gx", ":<c-u>Lspsaga range_code_action<cr>", {silent = true, noremap = true})
keymap("n", "K",  "<cmd>Lspsaga hover_doc<cr>", {silent = true, noremap = true})
keymap("n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", {silent = true, noremap = true})
keymap("n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", {silent = true, noremap = true})
keymap("n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", {silent = true, noremap = true})
-- TODO: My Own Command Shortcuts
keymap('n', '<leader>acd', ':set autochdir', opts)
vim.cmd('source $HOME/.config/nvim/vim-scripts/key-mappings.vim')
