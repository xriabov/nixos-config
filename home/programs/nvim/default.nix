{ pkgs, nixvim, ... }: {
  imports = [
    nixvim.nixosModules.nixvim
  ];

}
