return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        -- require('telescope').setup({})
        require('telescope').setup({
            defaults = {
                -- layout_strategy = 'vertical',
                layout_config = {
                    height = 0.99,
                    width = 0.99,
                    -- height = 0.95,  -- 95% of the screen height
                    -- width = 0.95,   -- 95% of the screen width
                    -- prompt_position = 'top',

                    horizontal = {
                        preview_width = 0.6, -- 60% of the window
                    },
                    vertical = {
                        preview_height = 0.7,
                    },
                },
                -- sorting_strategy = 'ascending',
            }
        })

        local builtin = require('telescope.builtin')

        -- -----------------------------------------------
        --                  BAG KEYMAPS
        -- -----------------------------------------------
        -- BAG
        -- vim.keymap.set('n', '<leader>file', builtin.find_files, {}) -- BAG
        -- vim.keymap.set("n", "<leader>file", function()
        --     builtin.find_files({})
        --     print("Git command triggered!")
        -- end)

        vim.keymap.set('n', '<leader>file', builtin.find_files, {}) -- BAG
        vim.keymap.set('n', '<leader>gfile', builtin.git_files, {})
        -- -----------------------------------------------
        --                  BAG KEYMAPS
        -- -----------------------------------------------


        -- Orig keymaps:
        -- vim.keymap.set('n', '<leader>pws', function()
        --     local word = vim.fn.expand("<cword>")
        --     builtin.grep_string({ search = word })
        -- end)
        -- vim.keymap.set('n', '<leader>pWs', function()
        --     local word = vim.fn.expand("<cWORD>")
        --     builtin.grep_string({ search = word })
        -- end)
        -- -- Note: Gets the WORD under the cursor, using vim.fn.expand("<cWORD>")
        -- -- This includes a wider range of characters (e.g., punctuation), not just alphanumerics.
        -- -- Runs the same builtin.grep_string({ search = word }) to search for it across your files.
        -- -- This is handy when the item under the cursor includes symbols or is part of a longer token (like my_function() or user.name).
        -- vim.keymap.set('n', '<leader>grep', function()
        --     builtin.grep_string({ search = vim.fn.input("Grep > ") })
        -- end)
        -- vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end
}

