{ pkgs, ... }: {
  home.packages = with pkgs; [
    # archive
    zip
    xz
    unzip

    # utils
    jq
    lshw
    wget
    xxd
    tmux
    k6

    # misc
    tree
    which

    # db
    dbeaver-bin

    # cloud
    docker
    kubectl

    # desktop

    # utils
    motrix
    tor-browser

    # fun
    spotify
    wine64

    # 3d
    cura
  ];
}
