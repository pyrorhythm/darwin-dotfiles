{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    home-manager

    gnumake
    openssl
    nil
    nixd
    nixfmt

    p7zip
    ripgrep
    jq
    yq
    fzf
    nmap
    file
    which
    tree

    git
  ];
}
