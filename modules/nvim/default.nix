{ pkgs, nixvim, ... }: {
  programs.nixvim = {
    enable = true;
    clipboard.register = "unnamedplus";
    colorschemes.rose-pine.enable = true;
    plugins = {
      treesitter = {
        enable = true;
	indent = true;
      };
    };
  };
}
