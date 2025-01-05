-- ~/.config/nvim/lua/plugin/undotree.lua
-- 配置选项
vim.g.undotree_WindowLayout = 2
vim.g.undotree_SplitWidth = 30
vim.g.undotree_DiffpanelHeight = 10
vim.g.undotree_SetFocusWhenToggle = 1

-- 设置快捷键
vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true, silent = true })




