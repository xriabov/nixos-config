{ config, pkgs, nixvim, ... }:

{
  programs.home-manager.enable = true;
  imports = [
    ./programs
    ./shell
  ];

  home.username = "pathetic_gull";
  home.homeDirectory = "/home/pathetic_gull";

  home.stateVersion = "23.11";
}
