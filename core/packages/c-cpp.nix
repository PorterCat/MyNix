{ pkgs, ... }:
{
    environment.systemPackages = with pkgs;
    [
        gcc
        gdb
        gnumake
        gnumake42
        cmake
        clang
        clang-tools
        valgrind
    ];
}
