{rift, ...}: {
   nixpkgs.overlays = [ rift.overlays.default ];

   imports = [
      ./core.nix
      ./system
      ./user
      ./services
   ];
}
