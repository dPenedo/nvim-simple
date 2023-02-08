vim.cmd [[
nnoremap <Leader>w :write<CR>
nnoremap <Leader>0 :nohlsearch<CR>
nnoremap<leader>V :vsplit<CR>
nnoremap<leader>s :split<CR>
nnoremap<leader>e :NERDTreeToggle<CR>
nnoremap<leader>f :Files<CR>
nnoremap<leader>h :History<CR>
nnoremap<leader>l :BLines<CR>
nnoremap<leader>H :Helptags<CR>
]]


-- -- FZF
-- vim.keymap.set('n', '<leader>~', ':Files ~/<CR>')
-- vim.keymap.set('n', '<leader>f', ':Files<CR>')
-- vim.keymap.set('n', '<leader>hh', ':History<CR>')
-- vim.keymap.set('n', '<leader>l', ':BLines<CR>')
-- -- Telescope

-- vim.keymap.set('n', '<leader>b', ':Telescope buffers<CR>')
-- vim.keymap.set('n', '<leader>t', ':Telescope file_browser<CR>')
-- vim.keymap.set('n', '<leader>g', ':Telescope live_grep<CR>')
-- vim.keymap.set('n', '<leader>r', ':Telescope registers<CR>')
-- vim.keymap.set('n', '<leader>H', ':Telescope help_tags<CR>')

-- -- Nohl
-- vim.keymap.set('n', "0", ':nohlsearch<CR>')

-- -- Copying the vscode behaviour of making tab splits
-- vim.keymap.set('n', '<A-v>', '<CMD>vsplit<CR>')
-- -- vim.keymap.set('n', '<A-s>', '<CMD>split<CR>')

-- -- Move line up and down in NORMAL and VISUAL modes
-- -- Reference: https://vim.fandom.com/wiki/Moving_lines_up_or_down
-- vim.keymap.set('n', '<C-j>', '<CMD>move .+1<CR>')
-- vim.keymap.set('n', '<C-k>', '<CMD>move .-2<CR>')
-- vim.keymap.set('x', '<C-j>', ":move '>+1<CR>gv=gv")
-- vim.keymap.set('x', '<C-k>', ":move '<-2<CR>gv=gv")

-- -- Use operator pending mode to visually select the whole buffer
-- -- e.g. dA = delete buffer ALL, yA = copy whole buffer ALL
-- vim.keymap.set('o', 'A', ':<C-U>normal! mzggVG<CR>`z')

-- -- File explorers
-- vim.keymap.set('n', '<leader>e', ':Neotree<CR>')

-- vim.keymap.set('n', '<leader>R', ':RnvimrToggle<CR>')






