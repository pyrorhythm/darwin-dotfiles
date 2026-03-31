{ username, ... }:
{
  imports = [
    ./modules
    ./pkgs.nix
  ];

  home = {
    username = username;
    homeDirectory = "/Users/${username}";
    stateVersion = "25.11";
  };

  programs.home-manager.enable = true;
}
