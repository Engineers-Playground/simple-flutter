{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    android-nixpkgs = {
      url = "github:tadfisher/android-nixpkgs";
      inputs = {
        flake-utils.follows = "flake-utils";
        nixpkgs.follows = "nixpkgs";
      };
    };
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    android-nixpkgs,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
          android_sdk_accept_license = true;
        };
      };
      mkShellNoCC = pkgs.mkShellNoCC;
      androidCustomPackage = android-nixpkgs.sdk.${system} (
        sdkPkgs:
          with sdkPkgs; [
            cmdline-tools-latest
            build-tools-35-0-0
            ndk-28-0-13004108
            platform-tools
            emulator
            platforms-android-35
            system-images-android-35-google-apis-playstore-arm64-v8a
          ]
      );
    in {
      formatter = pkgs.alejandra;
      devShells.default = import ./shell.nix pkgs;
    });
}
