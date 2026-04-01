{pkgs,...}:
{
  home.packages = with pkgs; [
    php
    phpPackages.php-cs-fixer
    phpstan
  ];
}
