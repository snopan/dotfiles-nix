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
                name = "chatgpt";
                publisher = "openai";
                version = "26.908.31748";
                sha256 = "sha256-etDbaBqJfIjbjY5TGOwnA4JddGaPx/7rWkE2gnSV4G8=";
            }
            {
                name = "codex-stats";
                publisher = "martinortiz";
                version = "1.0.4";
                sha256 = "sha256-XBoRbhPfs4IFjMoRaERMlAk4mYyV5tBKVrVnBflfhNc=";
            }
        ];

        # Declarative settings.json settings
        userSettings = {
            "workbench.colorTheme" = "One Dark Pro Darker";
            "editor.fontSize" = 14;
        };
    };
}