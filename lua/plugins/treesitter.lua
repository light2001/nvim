return {
    {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            require('nvim-treesitter').setup({
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                }
            })
        end
    }
}
