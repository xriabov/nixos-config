{ config, pkgs, ... }:

{
  home.username = "pathetic_gull";
  home.homeDirectory = "/home/pathetic_gull";

  programs.bash = {
    enable = true;
    enableCompletion = true;
  };

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}
