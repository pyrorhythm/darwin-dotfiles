{
  description = "Rift - A tiling window manager for macOS (prebuilt binary)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachSystem [ "x86_64-darwin" "aarch64-darwin" ] (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
      in
      {
        packages.default = pkgs.stdenv.mkDerivation rec {
          pname = "rift";
          version = "0.2.8";

          src = pkgs.fetchurl {
            url = "https://github.com/acsandmann/rift/releases/download/v${version}/rift-universal-macos-${version}.tar.gz";
            hash = "sha256:f2eacac9f352f85dd803c5f436c85009256746494ecba175960f2a18c27aca76";
          };

          dontBuild = true;

          unpackPhase = ''
            runHook preUnpack
            tar xzf $src
            runHook postUnpack
          '';

          installPhase = ''
            runHook preInstall
            mkdir -p $out/bin
            cp rift $out/bin/rift
            cp rift-cli $out/bin/rift-cli
            chmod +x $out/bin/{rift,rift-cli}
            runHook postInstall
          '';

          meta = with pkgs.lib; {
            description = "A tiling window manager for macOS";
            homepage = "https://github.com/acsandmann/rift";
            license = licenses.gpl3;
            platforms = platforms.darwin;
            maintainers = [ ];
          };
        };
      }
    );
}
