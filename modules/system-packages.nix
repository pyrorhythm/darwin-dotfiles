{ pkgs, rift, system, ... }: {
  environment.systemPackages = with pkgs; [
    home-manager

    gcc-unwrapped
    zlib
    libuv

    gnumake
    openssl
    nil
    nixd
    mos

    git

    rift.packages.${system}.default
  ];
}
