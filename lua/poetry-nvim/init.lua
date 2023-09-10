require("poetry_nvim")
pcall(vim.cmd, [[packadd packer.nvim]])

local packer = require("packer")
packer.startup(function()
	use {
		"daurnimator/http",
		rocks = "http"
	}
end)
