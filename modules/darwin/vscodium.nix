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
        ms-python.python
        rust-lang.rust-analyzer
      ] ++ pkgs.nix4vscode.forVscode [
        "zhuangtongfa.material-theme"
        "amodio.tsl-problem-matcher"
        "ms-vscode.extension-test-runner"
        "mtxr.sqltools"
        "google-cloud-spanner-ecosystem.google-cloud-spanner-driver"
      ];
    })
  ];
}