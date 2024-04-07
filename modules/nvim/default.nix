{ pkgs, nxvim, ... }: {
  imports = [
    nxvim.nixosModules.nixvim
  ];
  programs.nixvim = {
    enable = true;

    colorschemes.gruvbox.enable = true;
    plugins.lightline.enable = true;
  };
}
