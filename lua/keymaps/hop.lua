-- 设置 leader 键为空格

-- 普通模式按键绑定示例
vim.api.nvim_set_keymap('n', '<leader>w', "<cmd>lua require'hop'.hint_words()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', "<cmd>lua require'hop'.hint_lines()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>c', "<cmd>lua require'hop'.hint_char1()<cr>", { noremap = true, silent = true })

-- 插入模式按键绑定示例
vim.api.nvim_set_keymap('i', '<leader>w', "<cmd>lua require'hop'.hint_words()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<leader>l', "<cmd>lua require'hop'.hint_lines()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<leader>c', "<cmd>lua require'hop'.hint_char1()<cr>", { noremap = true, silent = true })

-- 可视模式按键绑定示例
vim.api.nvim_set_keymap('v', '<leader>w', "<cmd>lua require'hop'.hint_words()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>l', "<cmd>lua require'hop'.hint_lines()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>c', "<cmd>lua require'hop'.hint_char1()<cr>", { noremap = true, silent = true })

-- instead of  default  f  t
vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_char1()<cr>", {})
vim.api.nvim_set_keymap('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR })<cr>", {})
vim.api.nvim_set_keymap('n', 't', "<cmd>lua require'hop'.hint_char1({ hint_offset = -1 })<cr>", {})
vim.api.nvim_set_keymap('n', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, hint_offset = -1 })<cr>", {})

