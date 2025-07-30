{ pkgs, ... }: {
  # Install unnaturalscrollwheels
  environment.systemPackages = [ pkgs.unnaturalscrollwheels ]; 

  # Start up unnaturalscrollwheels
  launchd.user.agents.unnaturalscrollwheels = {
    command = ''"/Applications/Nix Apps/UnnaturalScrollWheels.app/Contents/MacOS/UnnaturalScrollWheels"'';
    serviceConfig.RunAtLoad = true;
  };
}