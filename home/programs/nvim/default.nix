{ pkgs, nixvim, config, ... }: {
  imports = [
    nixvim.nixosModules.nixvim
  ];

  programs.nixvim.enable = true;

}
