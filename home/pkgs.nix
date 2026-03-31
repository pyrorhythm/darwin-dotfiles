{ pkgs, ... }:
{
  home.packages = with pkgs; [
    telegram-desktop
    zed-editor
    spotify
    zoom-us

    go
    uv
    gh

    minikube
    orbstack

    just
    direnv

    zoxide
    mise

    vscodium
  ];
}
