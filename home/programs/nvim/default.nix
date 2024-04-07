{ pkgs, nixvim, config, ... }: {
  programs.nixvim {
    enable = true;
    colorschemes.melange.enable = true;

}
