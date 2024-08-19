{
  description = "Yash Garg's Neovim configuration";

  outputs =
    inputs:
    let
      lib = inputs.snowfall-lib.mkLib {
        inherit inputs;
        src = ./.;
        snowfall = {
          namespace = "dots";
        };
      };
    in
    lib.mkFlake {
      inherit inputs;

      alias.packages.default = "neovim";

      channels-config.allowUnfree = true;

      overlays = [ inputs.nixvim.overlays.default ];

      outputs-builder =
        channels:
        let
          pkgs = channels.nixpkgs;
        in
        {
          formatter = pkgs.nixfmt-rfc-style;

          checks.pre-commit-check = inputs.pre-commit-hooks.lib.${channels.nixpkgs.system}.run {
            src = ./.;
            hooks.nixfmt = {
              enable = true;
              entry = "${pkgs.nixfmt-rfc-style}/bin/nixfmt";
              extraPackages = [ pkgs.nixfmt-rfc-style ];
            };
          };
        };
    };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";

    pre-commit-hooks.url = "github:cachix/pre-commit-hooks.nix";
    pre-commit-hooks.inputs.nixpkgs.follows = "nixpkgs";

    snowfall-lib.url = "github:snowfallorg/lib";
    snowfall-lib.inputs.nixpkgs.follows = "nixpkgs";
  };
}
