# Neovim

[![FlakeHub](https://img.shields.io/endpoint?url=https://flakehub.com/f/Yash-Garg/neovim/badge)](https://flakehub.com/flake/Yash-Garg/neovim)

Customized Neovim configuration ready to be used with Nix.

## Try Without Installing

You can try this configuration out without committing to installing it on your system by running
the following command.

```nix
nix run github:yash-garg/neovim
```

## Install

### Nix Profile

You can install this package imperatively with the following command.

```nix
nix profile install github:yash-garg/neovim
```

### Nix Configuration

You can install this package by adding it as an input to your Nix flake.

```nix
{
  description = "My system flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Snowfall is not required, but will make configuration easier for you.
    snowfall-lib = {
      url = "github:snowfallorg/lib";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    neovim = {
      url = "github:yash-garg/neovim";
      # You can also use the flakehub source
      url = "https://flakehub.com/f/Yash-Garg/neovim/*.tar.gz";
      # This flake currently requires changes that are only on the Unstable channel.
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs:
    inputs.snowfall-lib.mkFlake {
      inherit inputs;
      src = ./.;

      overlays = with inputs; [
        # Use the overlay provided by this flake.
        neovim.overlays.default

        # There is also a named overlay, though the output is the same.
        neovim.overlays."package/neovim"
      ];
    };
}
```

If you've added the overlay from this flake, then in your system configuration
you can add the `dots.neovim` package.

```nix
{ pkgs }:
{
  environment.systemPackages = [ pkgs.dots.neovim ];
}
```
