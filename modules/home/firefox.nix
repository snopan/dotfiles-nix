{ specialArgs, ... }: {
  programs.firefox.enable = true;

  # programs.firefox.profiles.snoapn.extensions.packages = with specialArgs.inputs.nur.repos.rycee.firefox-addons; [
  #   ublock-origin
  # ];
}