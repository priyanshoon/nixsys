# My NixOs Configurations

## Devices
- Domain (laptop)
```sh
sudo nixos-rebuild switch --flake ./#domain
home-manager switch --flake ./
```

- Expansion (Desktop)
```sh
sudo nixos-rebuild switch --flake ./#expansion
home-manager switch --flake ./
```
