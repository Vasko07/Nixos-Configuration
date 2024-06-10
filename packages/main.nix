{ pkgs, ... }:

   with pkgs; [
   
    # TERMINAL
    any-nix-shell
    neofetch
    zip
    unrar
    unzip
   
    # DEVELOPMENT
    gcc
    gnumake
    gdb

    # OFFICE
    texlive.combined.scheme-medium
    todoist-electron
    brave
    slack

    # DEFAULT
    discord

  ]
