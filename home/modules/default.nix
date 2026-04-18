{ ... }:
{
  imports = [
    ./git.nix
    ./browser.nix
    ./zed.nix
    ./rift.nix
    ./terminal
  ];

  xdg.enable = true;
}
