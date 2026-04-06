{inputs,...}:
{
  imports = [
    inputs.nvf.homeManagerModules.default
  ];

  programs.nvf = {
    enable = true;
    settings = import (inputs.pfeiffer-nvf + "/default.nix");
  };
}
