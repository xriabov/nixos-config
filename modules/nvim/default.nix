{ pkgs, nixvim, ... }: {
  programs.nixvim = {
    enable = true;
    globals.mapleader = " ";
    clipboard.register = "unnamedplus";
    colorschemes.rose-pine.enable = true;
    options = {
      number = true;
      relativenumber = true;
      shiftwidth = 4;
      expandtab = true;
    };
    keymaps = [
      {
        action = ":Neotree<CR>";
        key = "T";
        mode = ["n"];
      }      
      {
        action = "<CMD>Oil<CR>";
        key = "<Leader>ex";
      }
    ];
    plugins = {
      treesitter.enable = true;
      oil.enable = true;
      which-key = {
        plugins = {
          presets.motions = true;
          presets.nav = true;
          presets.windows = true;
        };
        enable = true;
        triggers = "auto";
      };

      lsp = {
        enable = true;
        servers = {
          rust-analyzer = {
            enable = true;
            installRustc = true;
            installCargo = true;
          };
          csharp-ls.enable = true;
          nixd.enable = true;
        };
      };
      neo-tree = {
        enable = true;
        closeIfLastWindow = true;
      };
    };
  };
}
