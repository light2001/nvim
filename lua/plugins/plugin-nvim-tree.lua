return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function()
            require("nvim-tree").setup {
                  auto_close = true,  -- 当打开一个文件时自动关闭 nvim-tree
                  view = {
                    width = 30,  -- 设置 nvim-tree 的宽度
                    side = 'left',  -- 设置 nvim-tree 显示在左侧
                  },
                  filters = {
                    dotfiles = false,  -- 是否显示隐藏文件
                  },
            }
        end
    }
}
