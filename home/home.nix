{ config, pkgs, ... }:
{
    home =
    {
        username = "portercat";
        homeDirectory = "/home/portercat";
        stateVersion = "24.05";

        packages = with pkgs;
        [
          neofetch
        ];
    };

    imports =
    [
      ./bash.nix
      ./git.nix
    ];
}
