return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
  },
  config = function()
    local dap = require("dap")
    dap.adapters.gdb = {
      type = "executable",
      command = "gdb",
      args = { "--interpreter=dap", "--eval-command", "set print pretty on" }
    }

    dap.configurations.c = {
      {
        name = "Launch file",
        type = "gdb",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopAtEntry = false,
      },
      {
        name = "Attach to gdbserver :1234",
        type = "gdb",
        request = "launch",
        MIMode = "gdb",
        miDebuggerServerAddress = "localhost:1234",
        miDebuggerPath = "/usr/bin/gdb",
        cwd = "${workspaceFolder}",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
      },
    }


    dap.configurations.cpp = dap.configurations.c
    dap.configurations.rust = dap.configurations.c



    local dapui = require("dapui")
    dapui.setup()
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
    vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {desc = "Toggle a breakpoint for debug"})
    vim.keymap.set("n", "<Leader>dc", dap.continue, {desc = "Continue the debugging"})
    vim.keymap.set("n", "<Leader>dq", function()
      dap.terminate()
      dapui.close()
      vim.cmd("echo 'Debug session terminated'")
    end, { desc = "Quit debug session" })
  end,
}
