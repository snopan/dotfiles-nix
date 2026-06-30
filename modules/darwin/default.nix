{ pkgs, ... }: {
  imports = [
    ./vscodium.nix
    ./yabai.nix
    ./raycast.nix
    ./unnaturalscrollwheels.nix
    ./git.nix
    ./bitwarden.nix
    ./macsettings.nix
  ];

  services.tailscale.enable = true;

  # Install packages that require no configuration
  environment.systemPackages = with pkgs; [
    tinygo
    obsidian
    discord
    spotify
    go
    wget
    (yarn.override {
      nodejs = null;
    })
  ];
}