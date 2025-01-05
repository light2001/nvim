return {
  "neoclide/coc.nvim",
  branch = "release",
  -- event = "InsertEnter", -- 可选：仅在进入插入模式时加载
  config = function()
    vim.diagnostic.config {
        virtual_text = false, -- 关闭虚拟文本显示，使用符号列
        signs = true, -- 显示符号
        underline = true, -- 下划线错误
        update_in_insert = true, -- 在插入模式下更新诊断信息
        severity_sort = true, -- 按严重程度排序
    }
  end,
  dependencies = { "hrsh7th/nvim-cmp" },
}
