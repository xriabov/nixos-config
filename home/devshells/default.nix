{ config, pkgs, ... }: {
    devshels.rust = {
        pkgs.mkShell {
            buildInputs = [ pkgs.cargo pkgs.rustc ];
        }
    };
}
