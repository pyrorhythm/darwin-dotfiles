{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  nix = {
    enable = true;
    package = pkgs.nix;
    settings = {
      auto-optimise-store = false;
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

}
