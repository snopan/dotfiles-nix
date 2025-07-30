{ ... }: {
  # Required to run yabai
  system.primaryUser = "snopan";

  # Setup yabai
  services.yabai = {
    enable = true;
    config = {
      # Layout
      layout = "bsp";
      window_placement = "second_child";

      # Gaps
      top_padding = 12;
      bottom_padding = 12;
      left_padding = 12;
      right_padding = 12;
      window_gap = 12;

      # Mouse actions
      mouse_modifier = "cmd";
      mouse_action1 = "move";
      mouse_action2 = "resize";
    };

    extraConfig = ''
      # Disable management on specific apps
      yabai -m rule --add app='^System Settings$' manage=off
      yabai -m rule --add app='^calculator$' manage=off
    '';
  };

  # Reduce motion when switching desktops
  system.defaults.universalaccess.reduceMotion = true;

  # Set mac desktop traversing hotkeys
  # The following AppleSymbolicHotKeys changes may not apply 
  # straight away
  # Also requires manually creating all 5 desktops
  system.defaults.CustomUserPreferences = {
    "com.apple.symbolichotkeys" = {
      AppleSymbolicHotKeys = {
        "118" = { # Switch to Desktop 1
          enabled = true;
          value = {
            type = "standard";
            parameters = [
              65535
              18     # KeyCode: 1
              524288 # ModifierMask: Option key
            ];
          };
        };
        "119" = { # Switch to Desktop 2
          enabled = true;
          value = {
            type = "standard";
            parameters = [
              65535
              19     # KeyCode: 2
              524288
            ];
          };
        };
        "120" = { # Switch to Desktop 3
          enabled = true;
          value = {
            type = "standard";
            parameters = [
              65535
              20     # KeyCode: 3
              524288
            ];
          };
        };
        "121" = { # Switch to Desktop 4
          enabled = true;
          value = {
            type = "standard";
            parameters = [
              65535
              21     # KeyCode: 4
              524288
            ];
          };
        };
        "122" = { # Switch to Desktop 5
          enabled = true;
          value = {
            type = "standard";
            parameters = [
              65535
              22     # KeyCode: 5
              524288
            ];
          };
        };
      };
    };
  };
}