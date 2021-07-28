-- hide line numbers , statusline in specific buffers!
vim.api.nvim_exec(
    [[
   -- au TermOpen,BufEnter,BufWinEnter,WinEnter,CmdwinEnter term://* ++nested set nonumber statusline='%{luaeval('require("galaxyline").component_decorator')("ViMode")}\'
   au TermOpen term://* setlocal nonumber  laststatus=0
   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif
]],
    false
)
--%#GalaxyViMode\
--#%{luaeval('require("galaxyline").component_decorator')("ViMode")}
