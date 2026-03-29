{...}:
{
  nixpkgs.config.allowUnfree = true;
  home.username = "pfeiffer";
  home.homeDirectory = "/home/pfeiffer";
  home.stateVersion = "25.11"; 

  imports = [
    ../modules/apps
    ../modules/apps/work
    ../modules/vscode
    ../modules/git
    ../modules/nvfvim
    ../modules/programing
    ../modules/plasma_manager/worky
    ../modules/alacritty
    ../modules/bash
  ];
}
