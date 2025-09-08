{ pkgs, ... }: {
  environment.systemPackages = [ pkgs.docker ]; 

  virtualisation.docker.enable
}