{ pkgs, ... }: {
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
  ];
}
