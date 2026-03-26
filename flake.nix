{
  description = "Entry Flake to configure my machines.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-darwin = {
      url = "github:nix-darwin/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
  };

  outputs = { self, nixpkgs, home-manager, nix-darwin, nix-flatpak, ... }@inputs:
    let
      inherit (self) outputs;

      mkNixosConfiguration = hostname: username:
        nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs outputs hostname username;
            modules = "${self}/modules";
          };

          modules = [
            ./hosts/common/nixos
            ./hosts/${hostname}
            nix-flatpak.nixosModules.nix-flatpak
            home-manager.nixosModules.home-manager
            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                verbose = true;
                users.${username} = ./home/${hostname};

                extraSpecialArgs = {
                  inherit username;
                };
              };
            }
          ];
        };

      mkDarwinConfiguration = hostname: username:
        nix-darwin.lib.darwinSystem {
          system = "aarch64-darwin";
          specialArgs = {
            inherit inputs outputs hostname username;
            modules = "${self}/modules";
          };

          modules = [
            ./hosts/${hostname}
            home-manager.darwinModules.home-manager
            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                verbose = true;
                users.${username} = ./home/${hostname};

                extraSpecialArgs = {
                  inherit username;
                };
              };
            }
          ];
        };
    in
      {
        nixosConfigurations = {
          "maple" = mkNixosConfiguration "maple" "g23beaum";
        };

        darwinConfigurations = {
          "cedar" = mkDarwinConfiguration "cedar" "gwendalbeaumont";
        };
      };
}
