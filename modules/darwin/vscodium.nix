{ pkgs, specialArgs, ... }: {
  # Add nix4vscode overlay to import extension through that
  nixpkgs.overlays = [ specialArgs.inputs.nix4vscode.overlays.forVscode ];
  
  # Install vscodium with extensions and settings
  environment.systemPackages = with pkgs; [
    (vscode-with-extensions.override {
      vscode = vscodium;
      vscodeExtensions = with vscode-extensions; [
        bbenoist.nix
        golang.go
        waderyan.gitblame
        bierner.markdown-mermaid
        dbaeumer.vscode-eslint
      ] ++ pkgs.nix4vscode.forVscode [
        "zhuangtongfa.material-theme"
        "amodio.tsl-problem-matcher"
      ];
    })
  ];
}