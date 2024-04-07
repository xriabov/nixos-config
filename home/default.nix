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
  config.home-manager.users.pathetic_gull = {
      systemd.user.startServices = "sd-switch";
      xdg = {
        enable = true;
        userDirs = {
          enable = true;
          createDirectories = true;
        };
      };
      home.stateVersion = "23.11";
    };
}
