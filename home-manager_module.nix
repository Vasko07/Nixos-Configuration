{ config, pkgs, ... }:

let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-24.05.tar.gz";
in
{
  imports = [
    (import "${home-manager}/nixos")
  ];

  home-manager.users.gpinilla = {
    # La opción home.stateVersion no tiene un valor predeterminado y debe configurarse
    home.stateVersion = "24.05";
    
    # Aquí va el resto de tu configuración de Home Manager
    home.packages = with pkgs; [
      # Ejemplo de paquetes
      neofetch
      htop
    ];

    # Puedes agregar más configuraciones aquí, como configuraciones de programas específicos.
    programs.zsh.enable = true;
  };
}

