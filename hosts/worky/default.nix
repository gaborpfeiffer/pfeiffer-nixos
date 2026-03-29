{ ... }:
{
  imports = [
    ./hardware-configuration.nix # add hardware config !!!!!!
    ../common/base.nix
    ../features/kde.nix
  ];
  networking.hostName = "worky";
}
