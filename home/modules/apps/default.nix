{pkgs,...}:
{
  home.packages = with pkgs; [
      
      # core
      ripgrep

      # desktop
      google-chrome
      opencode
  ];
}
