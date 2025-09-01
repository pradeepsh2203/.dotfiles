return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
        print("toggleterm")
        require("toggleterm").setup{
            size = 40,
            open_mapping=[[<c-\>]],
            autochdir = false,
            terminal_mappings= true,
            direction = "float",
            persist_mode=true,
            auto_scroll = true,
        }
    end
}
