{ pkgs, ... }: {
  # Install bitwarden-desktop
  environment.systemPackages = [ pkgs.git ]; 

  # Set git email and name 
  programs.zsh.shellInit = ''
    git config --global user.email ""
    git config --global user.name "snopan"
  '';
}