{
  description = "Flake for bun3d.com";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { self
    , nixpkgs
    , flake-utils
    ,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        packages = {
          default = pkgs.stdenv.mkDerivation {
            name = "bun3d.com";
            src = ./.;

            nativeBuildInputs = with pkgs; [
              git
              hugo
            ];

            buildPhase = ''
              hugo
            '';
          };
        };
      }
    );
}
