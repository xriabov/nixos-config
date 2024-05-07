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

    # misc
    tree
    which

    # db
    dbeaver

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
