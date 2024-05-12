{ pkgs, ... }: {
  home.packages = with pkgs; [
    # archive
    zip
    xz
    unzip

    # utils
    zoxide
    jq
    lshw
    wget
    xxd
    tmux
    k6
    amqpcat
    gh

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
    chiaki # ps remote play

  ];
}
