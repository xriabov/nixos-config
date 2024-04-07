{ config, lib, pkgs, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autoSuggestions.enable = true;
    syntaxHighlighting.enable = true;

    shellALiases = {
      update = "sudo nixos-rebuild switch --flake /home/pathetic_gull/repos/nixos";
    };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      plugins = [ "rust" "dotnet" "git" "golang" ];
      theme = "robbyrussel";
    };
  };
}
