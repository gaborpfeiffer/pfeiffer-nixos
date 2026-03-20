{inputs,pkgs,...}:
{
  imports = [inputs.nvf.homeManagerModules.default];

  programs.nvf = {
    enable = true;
    defaultEditor = true;
    settings = {
      vim = {
        viAlias = true;
        vimAlias = true;

        globals.mapleader = " ";

        options = {

          clipboard = "unnamedplus";
          mouse = "a";
          splitbelow = true;
          splitright = true;
          timeoutlen = 500;
          termguicolors = true;
          completeopt = "menuone,noselect";
          updatetime = 300;

          # swap
          swapfile = false;
          backup = false;
          writebackup = false;
          undofile = true;

          # line numbers
          number = true;
          relativenumber = true;
          wrap = false;
          cursorline = true;
          signcolumn = "yes";
          scrolloff = 8;
          sidescrolloff = 5;
        };

        keymaps = [
          {
            mode = "n";
            key = "<leader>w";
            action = ":w<CR>";
            silent = false;
          }
          {
            mode = "n";
            key = "<leader>q";
            action = ":q<CR>";
            silent = false;
          }
        ];
      };
    };
  };
}