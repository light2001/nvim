-- init.lua
return {
  -- 其他插件配置
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {
	      check_ts = true, -- 启用 Treesitter
	      ts_config = {
		      lua = {'string'}, -- 不在 Lua 的字符串中添加括号
		      javascript = {'template_string'}, -- 不在 JavaScript 的模板字符串中添加括号
		      java = false, -- 禁用 Java 的 Treesitter
	      }
      }
    end
  },
  -- 其他插件配置
}

