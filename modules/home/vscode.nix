{ specialArgs, pkgs, ... }: {
    programs.vscode = {
        enable = true;
        # Uses the standard package instead of the FHS wrapper
        package = pkgs.vscode; 
        
        # Declarative extension list
        extensions = (with pkgs.vscode-extensions; [
            bbenoist.nix
            golang.go
            waderyan.gitblame
            bierner.markdown-mermaid
            dbaeumer.vscode-eslint
            ms-python.python
            zhuangtongfa.material-theme
            rust-lang.rust-analyzer
            esbenp.prettier-vscode
            firsttris.vscode-jest-runner
        ]) ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
            name = "opencode";
            publisher = "sst-dev";
            version = "0.0.13";
            sha256 = "sha256-6adXUaoh/OP5yYItH3GAQ7GpupfmTGaxkKP6hYUMYNQ="; 
        }
        ];

        # Declarative settings.json settings
        userSettings = {
            "workbench.colorTheme" = "One Dark Pro Darker";
            "editor.fontSize" = 14;
        };
    };
}