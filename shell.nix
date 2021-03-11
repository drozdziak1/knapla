let
  sources = import nix/sources.nix;
  pkgs = import sources.nixpkgs {};
  common-deps = pkgs.callPackage (import ./common-deps.nix) {};
  hsPkgs = import ./default.nix { inherit sources; };
in
hsPkgs.shellFor {
  packages = ps: with ps; [ knapla ];
  withHoogle = true;
  exactDeps = true;
}
