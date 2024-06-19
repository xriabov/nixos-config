{ pkgs, ... }: {
  programs.git = {
    enable = true;

    userName = "Nikita Riabov";
    userEmail = "atikinvobair@gmail.com";
    extraConfig = {
      credential.helper = "${
          pkgs.git.override { withLibsecret = true; }
        }/bin/git-credential-libsecret";
    };
  };
}

