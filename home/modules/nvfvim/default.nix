{inputs,pkgs,lib,...}:
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

          # tab settings
          tabstop = 2;
          shiftwidth = 2;
          softtabstop = 2;
          expandtab = true;
          shiftround = true;
          autoindent = true;
          smartindent = true;
        };

        keymaps = [
          # core
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
          # neo-tree
          {
            mode = "n";
            key = "<leader>e";
            action = ":Neotree toggle<CR>";
            silent = true;
          }
          {
            mode = "n";
            key = "<leader>o";
            action = ":Neotree focus<CR>";
            silent = true;
          }
        ];

        # auto pairs
        autopairs.nvim-autopairs.enable = true;

        #format on save
        autocmds = [
          {
            event = ["BufWritePre"];
            pattern = ["*.php"];
            callback = lib.generators.mkLuaInline ''
              function()
                require("conform").format({async = false})
              end
            '';
          }
        ];

        # treesitter
        treesitter = {
          enable = true;
          grammars = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
            php
          ];
        };

        # LSP servers
        languages = {
          nix.enable = true;
          json.enable = true;
          php = {
            enable = true;
            lsp.enable = true;
            treesitter.enable = true;
            format = {
              enable = true;
              type = ["php_cs_fixer"];
            };
          };
        };
        

        # Plugins
        filetree.neo-tree = {
          enable = true;
          setupOpts = {
            filesystem = {
              filtered_items = {
                hide_dotfiles = false;
                hide_gitignored = false;
              }; 
            };
          };
        };
      };
    };
  };
}
