{ pkgs, ... }: {
  imports = [
    ./vscodium.nix
    ./yabai.nix
    ./raycast.nix
    ./unnaturalscrollwheels.nix
    ./git.nix
    ./bitwarden.nix
    ./macsettings.nix
    ./chromium.nix
  ];

  # Install packages that require no configuration
  environment.systemPackages = with pkgs; [
    obsidian
  ];
}