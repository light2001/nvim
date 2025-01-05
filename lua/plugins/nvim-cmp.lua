-- ~/.config/nvim/lua/plugins/nvim-cmp.lua
return {
  -- 安装 nvim-cmp 及其依赖
  {'hrsh7th/nvim-cmp'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/cmp-buffer'},
  {'hrsh7th/cmp-path'},
  {'hrsh7th/cmp-cmdline'},
  {'saadparwaiz1/cmp_luasnip'},
  {'L3MON4D3/LuaSnip'},
  {'neovim/nvim-lspconfig'},

  -- 配置 nvim-cmp
  config = function()
    local cmp = require'cmp'
    cmp.setup({
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },
      mapping = {
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
      }, {
        { name = 'buffer' },
      })
    })

    -- 设置 LSP 服务器
    local lspconfig = require'lspconfig'
    lspconfig.pyright.setup{
      capabilities = require('cmp_nvim_lsp').default_capabilities()
    }
  end
}
