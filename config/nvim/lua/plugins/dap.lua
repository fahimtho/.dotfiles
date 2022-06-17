-- Dap Signs
require('dap')
vim.fn.sign_define('DapBreakpoint', {text='', texthl='String', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointCondition', {text='', texthl='String', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='栗', texthl='String', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointRejected', {text='', texthl='String', linehl='', numhl=''})

-- Python Adpter
local dap = require('dap')
dap.adapters.python = {
  type = 'executable';
  command = '/usr/bin/python';
  args = { '-m', 'debugpy.adapter' };
}

dap.configurations.python = {
  {
    type = 'python';
    request = 'launch';
    name = "Launch file";
    program = "${file}";
    pythonPath = function()
      local cwd = vim.fn.getcwd()
      if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
        return cwd .. '/venv/bin/python'
      elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
        return cwd .. '/.venv/bin/python'
      else
        return '/usr/bin/python'
      end
    end;
  },
}
