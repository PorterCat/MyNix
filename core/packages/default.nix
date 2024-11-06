{ pkgs, ... }:
{
  nixpkgs.config =
  {
    allowUnfree = true;
    permittedInsecurePackages =  [ "python-2.7.18" ];
  };

  imports =
  [
    ./c-cpp.nix
  ];

  environment.systemPackages = with pkgs;
  [
    # Desktop apps
    chromium
    telegram-desktop
    vencord
    vscode

    # Coding stuff

    # CLI utils
    git
    lazygit
    openssl
    unzip
    zip

    # Sound

    # Other
    home-manager
  ];
}
