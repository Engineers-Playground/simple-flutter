pkgs:
pkgs.stdenv.mkDerivation {
  name = "simple-flutter";
  nativeBuildInputs = with pkgs; [
    alejandra
    rustc
    rust-analyzer
    pkg-config
    flutter
  ];
}
