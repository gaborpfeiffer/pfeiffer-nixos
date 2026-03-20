{...}:
{
  nixpkgs.config.allowUnfree = true;
  home.username = "pfeiffer";
  home.homeDirectory = "/home/pfeiffer";
  home.stateVersion = "25.11"; 

  imports = [
    ../modules/apps
    ../modules/vscode
    ../modules/git
    ../modules/nvfvim
  ];
}