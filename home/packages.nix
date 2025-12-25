{ pkgs, ... }: {
  home.packages = with pkgs; [
    telegram-desktop
    ncspot
    zed-editor

    go
    nodejs_20

    uv
    go-task
    # claude-code

    docker
    docker-compose

    minikube
    lima

    zip
    unzip
    p7zip

    ripgrep
    jq
    yq
    fzf

    nmap

    file
    which
    tree
  ];
}
