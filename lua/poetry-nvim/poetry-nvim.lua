local lua_http = require("http")

function buf_insert_poem()
	local cursor = vim.api.nvim_win_get_cursor(0)
	local row = cursor[1]
	local col = cursor[2]
end

function get_poetry()
	author = _get_rand_author();
	print("author")
end

function _get_rand_author()
	response, err = lua_http.request("GET", "https://poetrydb.org/author")
	if err then error(err) end;

	return response.body
end

vim.cmd([[command! Poet :lua buf_insert_poem()]])
