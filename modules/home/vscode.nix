{ specialArgs, ... }: {
    programs.vscode = {
        enable = true;
        # Uses the standard package instead of the FHS wrapper
        package = pkgs.vscode; 
        
        # Declarative extension list
        extensions = with pkgs.vscode-extensions; [
            bbenoist.nix            # Nix language support
            dracula-theme.theme-dracula
            vscodevim.vim
        ];

        # Declarative settings.json settings
        userSettings = {
            "workbench.colorTheme" = "Dracula";
            "editor.fontSize" = 14;
        };
    };
}