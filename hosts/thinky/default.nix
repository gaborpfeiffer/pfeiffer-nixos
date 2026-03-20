{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../common/base.nix
    ../features/cosmic.nix
  ];
  networking.hostName = "thinky";
}