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

    # fun
    spotify
    wine64

    # 3d
    cura
  ];
}
