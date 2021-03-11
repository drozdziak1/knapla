{ sources ? import ./nix/sources.nix
, haskellNix ? import sources.haskell-nix {}
, nixpkgsSrc ? haskellNix.sources.nixpkgs-2009
, nixpkgsArgs ? haskellNix.nixpkgsArgs
  # import nixpkgs with overlays
, pkgs ? import nixpkgsSrc nixpkgsArgs
}: (pkgs.haskell-nix.project {
  # 'cleanGit' cleans a source directory based on the files known by git
  src = pkgs.haskell-nix.haskellLib.cleanGit {
    name = "knapla";
    src = ./.;
  };
})
