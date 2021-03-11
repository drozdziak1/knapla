{ sources ? import nix/sources.nix, pkgs ? import sources.nixpkgs {}, ghc ? pkgs.haskell.compiler.ghc8104 }:
pkgs.haskell.lib.buildStackProject {
  inherit ghc;
  name = "knapla-env";
  nativeBuildInputs = import ./common-deps.nix { inherit sources; };
}
