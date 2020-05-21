with import <nixpkgs> {};
let
  d = import ./default.nix;
in
pkgs.mkShell rec {
  buildInputs = [ 
    d 
    pkgs.go
  ];
}
