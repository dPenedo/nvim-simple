------------------------------------------------
-- DT'S NEOVIM CONFIGURATION
-- Neovim website: https://neovim.io/
-- DT's dotfiles: https://gitlab.com/dwt1/dotfiles
-------------------------------------------------
-------------------------------------------------
-- COLORSCHEMES
-------------------------------------------------

--
local ok, _ = pcall(vim.cmd, 'colorscheme spaceduck')

-- Highlight the region on yank
-- vim.api.nvim_create_autocmd("TextYankPost", {
-- 	group = num_au,
-- 	callback = function()
-- 		vim.highlight.on_yank({ higroup = "Visual", timeout = 120 })
-- 	end,
-- })

local function update_hl( group, tbl )
    local old_hl = vim.api.nvim_get_hl_by_name( group, true )
    local new_hl = vim.tbl_extend( 'force', old_hl, tbl )
    vim.api.nvim_set_hl( 0, group, new_hl )
end

update_hl( 'Comment', { italic = true } )

