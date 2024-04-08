{ pkgs, nixvim, ... }: {
  programs.nixvim = {
    enable = true;
    clipboard.register = "unnamedplus";
    colorschemes.rose-pine.enable = true;
    options = {
      number = true;
      relativenumber = true;
      shiftwidth = 4;
      expandtab = true;
    };
    plugins = {
      treesitter.enable = true;
      oil.enable = true;
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
    };
  };
}
