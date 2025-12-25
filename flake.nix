{
  description = "workstation";

  inputs = {
    nixpkgs = {
       url = "github:nixos/nixpkgs/nixpkgs-unstable";
    };
    darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    rift = {
      url = "github:pyrorhythm/rift-bin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      darwin,
      home-manager,
      rift,
      ...
    }:
    let
      username = "pyrorhythm";
      email = "me@pyrorhythm.dev";
      system = "aarch64-darwin";
      timezone = "Europe/Moscow";
      hostname = "workstation";
      specialArgs = inputs // {
        inherit
          username
          system
          hostname
          timezone
          email;
      };
    in
    {
      darwinConfigurations = {
         "${hostname}" = darwin.lib.darwinSystem {
            system = system;

            inherit specialArgs;

            modules = [
               ./modules

               home-manager.darwinModules.home-manager
               {
                  home-manager.useGlobalPkgs = true;
                  home-manager.useUserPackages = true;
                  home-manager.extraSpecialArgs = specialArgs;
                  home-manager.users.${username} = import ./home;
               }
            ];
         };
      };
    };
}
