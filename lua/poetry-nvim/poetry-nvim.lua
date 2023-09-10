function buf_insert_poem()
	local cursor = vim.api.nvim_win_get_cursor(0)
	local row = cursor[1]
	local col = cursor[2]

	print("Cursor is at row " .. row .. " and column " .. col)
end

vim.cmd([[command! Poet :lua buf_insert_poem()]])
