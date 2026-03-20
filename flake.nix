{
    description = "Multi-host NixOS config";

    inputs = {
      
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
      nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

      home-manager.url = "github:nix-community/home-manager/release-25.11";
      home-manager.inputs.nixpkgs.follows = "nixpkgs";


    };

    outputs = {nixpkgs, home-manager, ...}@inputs:
      let
        makeHost = 
          {
            hostName,
            homeHost,
            hmUser
          }:
          nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            specialArgs = { inherit inputs; };

            modules = [
              ./hosts/${hostName}

              home-manager.nixosModules.home-manager
              {
                home-manager.useUserPackages = true;
                home-manager.extraSpecialArgs = {
                  inherit inputs hostName;
                };
                home-manager.users = {
                  "${hmUser}" = import homeHost;
                };
              }
            ];
          };
      in
      {
        nixosConfigurations = {
          thinky = makeHost {
            hostName = "thinky";
            homeHost = ./home/hosts/thinky.nix;
            hmUser = "pfeiffer";
          };
        };
      };
}