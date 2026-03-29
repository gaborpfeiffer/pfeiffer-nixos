{
    description = "Multi-host NixOS config";

    inputs = {
      
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
      nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

      home-manager.url = "github:nix-community/home-manager/release-25.11";
      home-manager.inputs.nixpkgs.follows = "nixpkgs";

      #nvf
      nvf.url = "github:notashelf/nvf";
      nvf.inputs.nixpkgs.follows = "nixpkgs-unstable";

      #plasma-manager
      plasma-manager.url = "github:nix-community/plasma-manager";
      plasma-manager.inputs.nixpkgs.follows = "nixpkgs";
      plasma-manager.inputs.home-manager.follows = "home-manager";
    };

    outputs = {nixpkgs, home-manager, plasma-manager, ...}@inputs:
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
          worky = makeHost {
            hostName = "worky";
            homeHost = ./home/hosts/worky.nix;
            hmUser = "pfeiffer";
          };
        };
      };
}
