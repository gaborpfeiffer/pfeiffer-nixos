{pkgs,...}:
{ 
  home.packages = with pkgs; [
    jetbrains.phpstorm
    slack
    teams
    thunderbird
  ];
}
