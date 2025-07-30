{ pkgs, ... }: {
  # Ideally this in the future can be updated with bitwarden-cli when they support SSH

  # Install bitwarden-desktop
  environment.systemPackages = [ pkgs.bitwarden-desktop ]; 

  # Start up bitwarden-desktop
  launchd.user.agents.bitwarden-desktop = {
    command = ''"/Applications/Nix Apps/Bitwarden.app/Contents/MacOS/Bitwarden"'';
    serviceConfig.RunAtLoad = true;
  };

  # Set SSH_AUTH_SOCK to point to the Bitwarden SSH Agent socket
  programs.zsh.variables = {
    SSH_AUTH_SOCK=''/Users/$(whoami)/.bitwarden-ssh-agent.sock'';
  };
}