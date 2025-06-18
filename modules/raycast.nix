{ pkgs, ... }: {
  # Disable Spotlight search
  system.defaults.CustomUserPreferences = {
    "com.apple.symbolichotkeys" = {
      AppleSymbolicHotKeys = {
        "64" = { # Show Spotlight search
          enabled = false;
          value = {
            type = "standard";
            parameters = [32 49 1048576]; # Default bindings, doesn't matter
          };
        };
      };
    };
  };

  # Install raycast
  environment.systemPackages = [ pkgs.raycast ]; 

  # Start up raycast
  launchd.user.agents.raycast = {
    command = ''"/Applications/Nix Apps/Raycast.app/Contents/MacOS/Raycast"'';
    serviceConfig.RunAtLoad = true;
  };
}