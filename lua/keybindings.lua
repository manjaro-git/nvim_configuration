--
-- Glow KeyBinds
--
local map = vim.api.nvim_set_keymap
local opt = {noremap=true, silent=true}
map("n", "<leader>g", ":Glow<CR>", opt)



--
-- 分屏
--
map("n", "sv", ":vsp<CR>", opt) -- 垂直分屏
map("n", "sh", ":sp<CR>", opt) -- 水平分屏
map("n", "sc", "<C-w>c", opt) -- 关闭当前分屏
map("n", "so", "<C-w>o", opt) -- 关闭其他分屏

-- 比例控制
map("n", "=", ":vertical resize +20<CR>", opt)
map("n", "-", ":vertical resize -20<CR>", opt)
map("n", "+", ":resize +10<CR>", opt)
map("n", "_", ":resize -10<CR>", opt)

-- 跳转
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

-- 编译
map("n", "<F6>", ":!cmake -Bbuild -DCMAKE_EXPORT_COMPILE_COMMANDS=1<CR>", opt)
map("n", "<F7>", ":!cmake --build build --target app<CR>", opt)
map("n", "<F8>", ":!build/app<CR>", opt)

-- file explorer
map("n", ",f", ":NvimTreeToggle<CR>", opt)

-- debugger
map("n", "<F5>", ":lua require'dap'.continue()<CR>", opt)
map("n", "<F10>",":lua require'dap'.step_over()<CR>", opt)
map("n", "<F11>",":lua require'dap'.step_into()<CR>", opt)
map("n", "<F9>", ":lua require'dap'.terminate()<CR>", opt)
map("n", ",b",":lua require'dap'.toggle_breakpoint()<CR>", opt)
map("n", ",B",":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opt)

local pluginKeys ={}
-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
  return {
    -- 上一个
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    -- 下一个
    ['<C-j>'] = cmp.mapping.select_next_item(),
    -- 出现补全
    ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- 取消
    ['<A-,>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- 确认
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<Tab>'] = cmp.mapping.confirm({
      select = true ,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  }
end

return pluginKeys


