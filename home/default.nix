{ config, pkgs, nxvim, ... }:

{
  programs.home-manager.enable = true;
  imports = [
    nxvim.homeManagerModules.nixvim
    ./programs
    ./shell
  ];

  home.username = "pathetic_gull";
  home.homeDirectory = "/home/pathetic_gull";

  home.stateVersion = "23.11";
}
