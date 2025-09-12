return{
  {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function ()
    local harpoon = require("harpoon")
      -- REQUIRED
      harpoon:setup()
      -- REQUIRED

      vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, {desc = "add a buffer in harpoon"})
      vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = "Open harpoon window"})

      vim.keymap.set("n", "<Leader>hh", function() harpoon:list():select(1) end, {desc = "(harpoon) select first buffer"})
      vim.keymap.set("n", "<Leader>ht", function() harpoon:list():select(2) end, {desc = "(harpoon) select second buffer"})
      vim.keymap.set("n", "<Leader>hn", function() harpoon:list():select(3) end, {desc = "(harpoon) select third buffer"})
      vim.keymap.set("n", "<Leader>hs", function() harpoon:list():select(4) end, {desc = "(harpoon) select fourth buffer"})

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set("n", "<Leader><Tab>", function() harpoon:list():prev() end, {desc = "(harpoon) select next buffer"})
      vim.keymap.set("n", "<Leader><S-Tab>", function() harpoon:list():next() end, {desc = "(harpoon) select prev buffer"})
      vim.keymap.set("n", "<Leader>hd", function() harpoon:list():remove()end, { desc = "(harpoon) remove current buffer" })


      local conf = require("telescope.config").values
        local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end

            require("telescope.pickers").new({}, {
                prompt_title = "Harpoon",
                finder = require("telescope.finders").new_table({
                    results = file_paths,
                }),
                previewer = conf.file_previewer({}),
                sorter = conf.generic_sorter({}),
            }):find()
        end

        vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
            { desc = "Open harpoon window" })
  end
  },
}
