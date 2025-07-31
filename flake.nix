{
  description = "Modular shareable dotfiles with Nix + Home Manager + flakes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }:
    {
      homeConfigurations = {
        colter = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          modules = [ ./home/colter.nix ];
          extraSpecialArgs = { username = "colter"; };
        };
      };
    };
}
