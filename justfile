# Build and start the NixOS Virtual Machine
run: clean reveal && hide
  nixos-shell vm-wireguard.nix -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/refs/heads/release-22.11.tar.gz

# Delete VM
clean:
  @-rm nixos.qcow2 &>/dev/null

# Decrypt secrets stored in this git repo
reveal:
  # Decrypted secrets shall only be readable by us, not other local users
  test -e vm-wireguard.nix || (umask -S u=rxw,go-rwx; git secret reveal)

# Delete decrypted plain-text, leaving only the encrypted files
hide:
  @-git secret hide -d -m &>/dev/null

