{ ... }: {
  # Unlock sudo via fingerprint
  security.pam.services.sudo_local.touchIdAuth = true;

  system.defaults = {
    # Hide dock
    dock.autohide = true;
    # Set dock size to small
    dock.tilesize = 1;
    # Disable auto arrange of spaces
    dock.mru-spaces = false;
    # Finder shows all file extensions
    finder.AppleShowAllExtensions = true;
    # Default Finder folder view is the columns view
    finder.FXPreferredViewStyle = "clmv";
    # Save screen capture to clipboard
    screencapture.target = "clipboard";
    # Disable reveal desktop upon clicking wallpaper
    WindowManager.EnableStandardClickToShowDesktop = false;
  };
}