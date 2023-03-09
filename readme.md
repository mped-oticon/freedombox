# What?
We all know `nix-shell` which is very lightweight.
But there is also `nixos-shell` which builds and runs a VM.

# Usage
Just run `nix-shell` to get the nessecary environment.
From here you'll be presented with the list of available commands.

# What?
This package uses:
* `just`: A friendly [GNU Make]-like facade.
* `git-secret`: To encrypt secrets stored in the VM.
* `nixos-shell`: To build and run the VM.

The VM here is nothing special but has a wireguard private key.
