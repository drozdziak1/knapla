{ sources ? import ./nix/sources.nix
, pkgs ? import sources.nixpkgs {}
}: with pkgs; [ libGL libGLU freeglut pkg-config zlib]
