{ pkgs, nixvim, ... }: {
  imports = [
    nixvim.nixosModules.nixvim
  ];

  programs.nixvim.enable = true;

}
