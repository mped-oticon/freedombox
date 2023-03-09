{ pkgs ? (import (builtins.fetchTarball {
  url = "https://github.com/nixos/nixpkgs/tarball/22.11";
  sha256 = "11w3wn2yjhaa5pv20gbfbirvjq6i3m7pqrq2msf0g7cv44vijwgw";
}) {}) }:
with pkgs;
mkShell {
  packages = [
    just
    nixos-shell
    git-secret
  ];

  shellHook = ''
    # Self-describe: Present the user with what is possible in this environment
    just --list --unsorted --list-prefix "  $ just "
  '';
}
