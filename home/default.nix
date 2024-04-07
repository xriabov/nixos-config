{ config, pkgs, ... }:

{
  imports = [
    ./programs
    ./shell
  ];

  home.username = "pathetic_gull";
  home.homeDirectory = "/home/pathetic_gull";

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}
