{...}:
{
  imports = [
    ./bootloader.nix
    ./networking.nix
    ./users.nix
    ./audio.nix
    ./i18n.nix
    ./time.nix
    ./fonts.nix
    ./automatic_cleanup.nix
  ];

  # -- base --
  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
}