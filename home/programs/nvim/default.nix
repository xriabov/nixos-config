{ pkgs, nixvim, ... }: {
  imports = [
    <nixvim_import>
  ];
  programs.nixvim = {
    enable = true;
    colorschemes.gruvbox.enable = true;
    plugins.lightline.enable = true;
  };
}
