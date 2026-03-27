{pkgs,...}:
{
  home.packages = with pkgs; [
      
      # core
      ripgrep
      alacritty

      # desktop
      google-chrome
      opencode
  ];
}
