{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../common/base.nix
    ../features/kde.nix
  ];
  networking.hostName = "thinky";
}
