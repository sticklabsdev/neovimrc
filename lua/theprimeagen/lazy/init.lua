return {

    -- {
    --     "nvim-lua/plenary.nvim",
    --     name = "plenary"
    -- },

    "github/copilot.vim",
    "eandrju/cellular-automaton.nvim",
    "gpanders/editorconfig.nvim",

    -- BAG:
    {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup()
        end,
    }

}

