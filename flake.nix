{
  description = "A very basic flutter app";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils } @inputs: let
    outputs = self;
    in
      flake-utils.lib.eachDefaultSystem(
        system: let
          pkgs = nixpkgs.legacyPackages.${system};
        in {
          devShells.default = import ./shell.nix pkgs;
        }
      );
}
