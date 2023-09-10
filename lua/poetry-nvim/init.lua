require("poetry-nvim")
pcall(vim.cmd, [[packadd packer.nvim]])

local packer = require("packer")
packer.startup(function(use)
	use {
		"daurnimator/http",
		rocks = "http"
	}
end)
