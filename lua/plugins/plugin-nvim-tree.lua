return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function()
            require("nvim-tree").setup {
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
