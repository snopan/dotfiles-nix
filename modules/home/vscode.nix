{ specialArgs, pkgs, ... }: {
    programs.vscode = {
        enable = true;
        # Uses the standard package instead of the FHS wrapper
        package = pkgs.vscode; 
        
        # Declarative extension list
        extensions = with pkgs.vscode-extensions; [
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
        ];

        # Declarative settings.json settings
        userSettings = {
            "workbench.colorTheme" = "Dracula";
            "editor.fontSize" = 14;
        };
    };
}