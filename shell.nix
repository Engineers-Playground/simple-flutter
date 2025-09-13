pkgs:
pkgs.stdenv.mkDerivation {
  name = "simple-flutter";
  nativeBuildInputs = with pkgs; [
    alejandra
    rustc
    rust-analyzer
    pkg-config
    flutter
    android-tools
    adbfs-rootless
    mesa
    cmake
    zulu24
  ];
}
