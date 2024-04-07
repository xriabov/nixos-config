{ config, pkgs, ... }: {
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.neovim = {
    enable = true;

    viAlias = true;
    vimAlias = true;

    plugins = with pkgs.vimPlugins; [
    ];
  };
 
  xdg.configFile."nvim/lua" = {
    recursive = true;
    source = ./lua;
  };

}
