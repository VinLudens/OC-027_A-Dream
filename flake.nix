{
  description = "Flake for building and working with Lilypond";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    devshell.url = "github:numtide/devshell";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    lmi.url = "github:niveK77pur/lilypond-midi-input";
    naersk.url = "github:nix-community/naersk";
  };

  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [
        inputs.devshell.flakeModule
      ];
      systems = ["x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin"];
      perSystem = {
        pkgs,
        system,
        ...
      }: let
        naersk' = pkgs.callPackage inputs.naersk {};
      in {
        devshells.default = {
          packages = [
            # working with lilypond
            pkgs.lilypond
            pkgs.python311Packages.python-ly

            # handy tools
            pkgs.neovim-remote
            pkgs.timidity
            inputs.lmi.defaultPackage.${system}
            (naersk'.buildPackage {
              src = pkgs.fetchFromGitLab {
                owner = "dajoha";
                repo = "midiplay";
                rev = "f0e13a7872ba914772e3d3208333dc6c72c0c37c";
                hash = "sha256-Q6iTx2QUDk/VZb76sWguLT2LhdprjHaWCqxiMmiGZFM=";
              };
              nativeBuildInputs = with pkgs; [pkg-config alsa-lib ncurses];
            })

            # viewers
            pkgs.zathura
            pkgs.kdePackages.okular
          ];
        };
      };
    };
}
