{
    programs.bash =
    {
        enable = true;
        shellAliases =
        let
            flakePath = "~/MyNix";
        in
        {
            rebuild = "sudo nixos-rebuild switch --flake ${flakePath}";
            hms = "home-manager switch --flake ${flakePath}";
        };
    };
}
