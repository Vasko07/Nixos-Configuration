{ config, pkgs, lib, ... }:

{
  imports = [ ./configs/main.nix];
  nixpkgs.overlays = [ (import ./overlays/main.nix) ];
  nixpkgs.config = {
    allowUnfree = true;
  };
  home.packages = import ./packages/main.nix { inherit pkgs; };
  home.stateVersion = "22.05";
  home.username = "gpinilla";
  home.homeDirectory = "/home/gpinilla";
}
