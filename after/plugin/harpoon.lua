
--:lua require("harpoon.mark").add_file()
vim.keymap.set('n', '<leader>bm', require('harpoon.mark').add_file, { desc = 'Bookmark file' })
vim.keymap.set('n', '<leader>bv', require('harpoon.ui').toggle_quick_menu, { desc = 'Bookmark view' })

-- :lua require("harpoon.ui").nav_next()                   -- navigates to next mark
-- :lua require("harpoon.ui").nav_prev()                   -- navigates to previous mark
vim.keymap.set('n', '<leader>bn', require('harpoon.ui').nav_next, { desc = 'Bookmark next' })
vim.keymap.set('n', '<leader>bp', require('harpoon.ui').nav_prev, { desc = 'Bookmark previous' })

require("telescope").load_extension('harpoon')
vim.keymap.set("n", "<leader>bs", function()
  vim.cmd(":Telescope harpoon marks")
end)

