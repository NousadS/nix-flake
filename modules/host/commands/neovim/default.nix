{
    config,
    lib,
    pkgs,
    mkModule,
    inputs,
    system,
    ...
} @ args:
mkModule {
    environment.systemPackages = [
        inputs.nix4nvchad.packages.${system}.default
    ];

    # programs.nvf.settings.vim = {
    #     languages = {
    #         enableTreesitter = true;

    #         nix.enable = true;
    #         python.enable = true;
    #     };

    #     presence.neocord.enable = true;

    #     clipboard.providers.xclip.enable = true;

    #     lineNumberMode = "number";

    #     options = {
    #         scrolloff = 5;
    #         cursorlineopt = "line";
    #         tabstop    = 4;
    #         shiftwidth = 4;
    #         expandtab  = true;
    #         smarttab   = true;

    #         guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50";
    #     };

    #     lsp.enable = true;

    #     statusline.lualine.enable = true;
    #     telescope.enable = true;
    #     autocomplete.nvim-cmp.enable = true;
    #     snippets.luasnip.enable = true;

    #     filetree.neo-tree.enable = true;

    #     keymaps = [
    #         { mode = [ "n" "v" ]; key = "h"; action = "<Nop>"; }
    #         { mode = [ "n" "v" ]; key = "j"; action = "<Nop>"; }
    #         { mode = [ "n" "v" ]; key = "k"; action = "<Nop>"; }
    #         { mode = [ "n" "v" ]; key = "l"; action = "<Nop>"; }

    #         { mode = [ "n" "v" ]; key = "a"; action = "h"; } # left
    #         { mode = [ "n" "v" ]; key = "w"; action = "k"; } # up
    #         { mode = [ "n" "v" ]; key = "s"; action = "j"; } # down
    #         { mode = [ "n" "v" ]; key = "d"; action = "l"; } # right

    #         #{ mode = [ "n" "v" ]; key = "d"; action = "l"; } # right
    #         #{ mode = [ "n" "v" ]; key = "d"; action = "l"; } # right
    #         #{ mode = [ "n" "v" ]; key = "d"; action = "l"; } # right

    #         #{ mode = [ "n" "v" ]; key = "d"; action = "l"; } # right
    #         #{ mode = [ "n" "v" ]; key = "d"; action = "l"; } # right
    #         #{ mode = [ "n" "v" ]; key = "d"; action = "l"; } # right

    #         { mode = [ "n" ]; key = "."; action = ":Neotree<CR>"; }

    #         {
    #             mode = [ "i" "v" ];
    #             key = "kk";
    #             action = "<Esc>";
    #         }

    #         {
    #             mode = [ "n" "v" ];
    #             key = "l";
    #             action = ":Telescope find_files<CR>";
    #         }

    #         {
    #             mode = [ "n" "v" ];
    #             key = "y";
    #             action = ''"+y'';
    #         }
    #         {
    #             mode = [ "n" "v" ];
    #             key = "p";
    #             action = ''"+P'';
    #         }
    #         {
    #             mode = [ "n" "v" ];
    #             key = "h";
    #             action = ''"+dd'';
    #         }

    #         {
    #             mode = [ "n" ];
    #             key = "ee";
    #             action = ":w<CR>";
    #         }

    #         {
    #             mode = [ "n" ];
    #             key = "qq";
    #             action = ":q<CR>";
    #         }

    #         {
    #             mode = [ "i" ];
    #             key = "<Shift>a";
    #             action = "h"; # left
    #         }
    #         {
    #             mode = [ "i" ];
    #             key = "<Shift>w";
    #             action = "k"; # up
    #         }
    #         {
    #             mode = [ "i" ];
    #             key = "<Shift>s";
    #             action = "j"; # down
    #         }
    #         {
    #             mode = [ "i" ];
    #             key = "<Shift>d";
    #             action = "l"; # right
    #         }
    #    ];
    # };
}
