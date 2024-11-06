{ pkgs, ... }:
{
    users.users.portercat =
    {
        isNormalUser = true;
        extraGroups = [ "wheel" "input" "networkmanager" "docker" "rfkill" "audio" "network" "video"];
    };
}
