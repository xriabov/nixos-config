{ config, pkgs, nixvim, ... }:

{
  programs.home-manager.enable = true;
  imports = [
    nixvim.homeManagerModules.nixvim
    nixvim.nixosModules.nixvim
    nixvim.nixDarwinModules.nixvim
    ./programs
    ./shell
  ];

  home.username = "pathetic_gull";
  home.homeDirectory = "/home/pathetic_gull";

  home.stateVersion = "23.11";
}
