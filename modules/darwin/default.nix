{ pkgs, ... }: {
  imports = [
    ./vscodium.nix
    ./yabai.nix
    ./raycast.nix
    ./unnaturalscrollwheels.nix
    ./git.nix
    ./bitwarden.nix
    ./macsettings.nix
    ./docker.nix
  ];

  # Install packages that require no configuration
  environment.systemPackages = with pkgs; [
    obsidian
    discord
    spotify
    go
    nodejs_20
    (yarn.override {
      nodejs = null;
    })
  ];
}