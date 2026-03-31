{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    home-manager

    zlib
    libuv

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
    gnupg
  ];
}
