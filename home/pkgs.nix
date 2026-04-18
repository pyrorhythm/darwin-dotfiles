{ pkgs, ... }:
{
  home.packages = with pkgs; [
    telegram-desktop
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
