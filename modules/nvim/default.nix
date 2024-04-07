{ pkgs, nxvim, ... }: {
  programs.nxvim = {
    enable = true;

    colorschemes.gruvbox.enable = true;
    plugins.lightline.enable = true;
  };
}
