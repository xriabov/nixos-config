{ config, pkgs, ... }: {
  home.sessionVariables = {
    EDITOR = "nvim";
  };
  programs.nvim = {
    enable = true;

    viAlias = true;
    vimAlias = true;

    plugins = with pkgs.vimPlugins; [
      lazy-nvim
    ];
  };

 
  xdg.configFile."nvim/lua" = {
    recursive = true;
    source = ./lua;
  };

}
