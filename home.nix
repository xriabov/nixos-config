{ config, pkgs, ... }:

{
  home.username = "pathetic_gull";
  home.homeDirectory = "/home/pathetic_gull";

  home.packages = with pkgs; [
    # archive
    zip
    xz
    unzip

    # utils
    jq

    # misc
    which
  ];

  programs.git = {
    enable = true;
    userName = "Nikita Riabov";
    userEmail = "atikinvobair@gmail.com";
  }

  programs.bash = {
    enable = true;
    enableCompletion = true;
  }

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}
