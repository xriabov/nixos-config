{ pkgs, ... }: {
  fonts.fontconfig.enable = true;
#  home.packages = with pkgs; [
#    nerdfonts
#  ];

  fonts.packages = with pkgs; [
    (nerdfonts.override {
      fonts = [ 
        "FiraCode"
      ];
    })
  ];
}
