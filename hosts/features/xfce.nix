{ config, pkgs, callPackage, ... }: {
  services.xserver = {
    enable = true;
    desktopManager = {
      xterm.enable = false;
      xfce.enable = true;
    };
  };
  services.displayManager.defaultSession = "xfce";
  services.xserver.xkb.layout = "hu";
  console.keyMap = "hu";
}