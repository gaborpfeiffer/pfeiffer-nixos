{pkgs,...}:
{
  home.packages = with pkgs; [
    php
    phpPackages.php-cs-fixer
    phpPackages.composer
    phpstan
    nodejs
    pnpm
  ];
}
