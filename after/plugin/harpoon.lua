local harpoon = require('harpoon')

harpoon:setup()

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

vim.keymap.set('n', '<leader>ha', function() harpoon:list():add() end, {desc = '[H]arpoon [A]dd'})
vim.keymap.set('n', '<leader>hr', function() harpoon:list():remove() end, {desc = '[H]arpoon [R]emove'})
vim.keymap.set('n', '<leader>hc', function() harpoon:list():clear() end, {desc = '[H]arpoon [C]lear list'})
vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon window" })

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end, {desc = '[H]arpoon [P]revious'})
vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end, {desc = '[H]arpoon [N]ext'})
