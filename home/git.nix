{pkgs, ...}:
{
  programs.git = {
    enable = true;
    userName  = "PorterCat";
    userEmail = "leportercat@gmail.com";
    lfs.enable = true;
  };
}
