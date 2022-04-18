-- Debug Signs
require('dap')
    vim.fn.sign_define('DapBreakpoint', {text='', texthl='String', linehl='', numhl=''})
    vim.fn.sign_define('DapBreakpointCondition', {text='', texthl='String', linehl='', numhl=''})
    vim.fn.sign_define('DapLogPoint', {text='', texthl='String', linehl='', numhl=''})
    vim.fn.sign_define('DapStopped', {text='', texthl='String', linehl='', numhl=''})
    vim.fn.sign_define('DapBreakpointRejected', {text='', texthl='String', linehl='', numhl=''})

-- Debug Python adpator
local dap = require('dap')
dap.adapters.python = {
  type = 'executable';
  command = '/bin/python';
  args = { '-m', 'debugpy.adapter' };
}

local dap = require('dap')
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

-- Debug C,CPP,Rust Adptor
local dap = require('dap')
dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb-vscode',
  name = "lldb"
}

local dap = require('dap')
dap.configurations.cpp = {
  {
    name = "Launch",
    type = "lldb",
    request = "launch",
    program = "${fileBasenameNoExtension}",
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
    runInTerminal = false,
    postRunCommands = {'process handle -p true -s false -n false SIGWINCH'}
  },
}
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
