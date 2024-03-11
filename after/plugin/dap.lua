local dap, dapui = require('dap'), require("dapui")

require("dapui").setup()
require('dap-python').setup('~/.config/nvim/virtualenvs/debugpy/bin/python')

dap.listeners.before.attach.dapui_config = function()
    dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
    dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
    dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
    dapui.close()
end

vim.keymap.set('n', '<Leader>qo', dap.terminate, {})
vim.keymap.set('n', '<Leader>b', dap.toggle_breakpoint, {})
vim.keymap.set('n', '<Leader>co', dap.continue, {})
vim.keymap.set('n', '<Leader>s', dap.step_over, {})
vim.keymap.set('n', '<Leader>si', dap.step_into, {})
vim.keymap.set('n', '<Leader>st', dap.step_out, {})
