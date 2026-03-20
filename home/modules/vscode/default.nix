{pkgs,...}:
{
  programs.vscode = {
    enable = true;

    profiles.default = {
        extensions = with pkgs.vscode-extensions; [
          esbenp.prettier-vscode
        ];

      userSettings = {
        "workbench.colorTheme" = "Default Light Modern";
        "workbench.sideBar.location" = "right";
      
        "editor.formatOnSave" = true;
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
    };
  };
}