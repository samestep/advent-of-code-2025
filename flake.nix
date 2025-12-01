{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    flake-utils.url = "github:numtide/flake-utils";
    moss = {
      url = "github:moss-lang/moss";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      moss,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ moss.overlays.default ];
        };
      in
      {
        devShells.default = pkgs.mkShellNoCC {
          buildInputs = [
            pkgs.aoc-cli
            pkgs.moss
          ];
        };
      }
    );
}
