{ config, pkgs, nixvim, ... }:

{
  programs.home-manager.enable = true;
  imports = [
    nixvim.homeManagerModules.nixvim
    ./programs
    ./shell
  ];

  home.username = "pathetic_gull";
  home.homeDirectory = "/home/pathetic_gull";

  home.stateVersion = "23.11";
}
