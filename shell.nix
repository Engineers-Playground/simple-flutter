pkgs: pkgs.stdenv.mkDerivation {
  name = "flutterApp";
  nativeBuildInputs = with pkgs; [
    git 
    alejandra
    flutter
  ];

  NIX_CONFIG = "extra-experimental-features = nix-command flakes";
}