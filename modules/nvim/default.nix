{ nixvim, ... }: {
  programs.nixvim = {
    enable = true;
    globals.mapleader = " ";
    clipboard.register = "unnamedplus";
    colorschemes.rose-pine.enable = true;
    opts = {
      number = true;
      relativenumber = true;
      tabstop = 4;
      shiftwidth = 4;
      expandtab = true;
      smartindent = true;
      autoindent = true;
      wrap = false;
    };
    keymaps = [
      {
        action = "<CMD>Oil<CR>";
        key = "<Leader>ex";
      } {
        action = "<ESC>";
        key = "jk";
        mode = "i";
      } {
        action = "<ESC>";
        key = "kj";
        mode = "i";
      }
# Lua keymaps
      {
        action.__raw = "vim.lsp.buf.definition";
        key = "gd";
        mode = ["n"];
      }
      {
        action.__raw = "vim.lsp.buf.declaration";
        key = "gD";
        mode = ["n"];
      }
      {
        action.__raw = "vim.lsp.buf.references";
        key = "gr";
        mode = ["n"];
      }
    ];

    plugins = {
      treesitter.enable = true;
      oil.enable = true;

      cmp_luasnip.enable = true;
      luasnip.enable = true;
      cmp-nvim-lsp.enable = true;
      cmp-path.enable = true;
      cmp-buffer.enable = true;

      which-key = {
        plugins = {
          presets.motions = true;
          presets.nav = true;
          presets.windows = true;
        };
        enable = true;
      };

      lsp = {
        enable = true;
        servers = {
          rust-analyzer = {
            enable = true;
            installRustc = true;
            installCargo = true;
          };
          omnisharp.enable = true;
          nixd.enable = true;
          gopls.enable = true;
        };
      };

      copilot-vim = {
        enable = true;
      };
      
      cmp = {
        enable = true;
        autoEnableSources = true;
        settings = {
          snippet.expand = ''
  function(args)
    require('luasnip').lsp_expand(args.body)
  end
'';
          sources = [
            { name = "nvim_lsp"; }
            { name = "buffer"; }
            { name = "luasnip"; }
            { name = "path"; }
          ];
          mapping = {
            "<C-n>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
            "<C-p>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
            "<C-y>" = "cmp.mapping.confirm({ select = true })";
            "<C-f>" = "cmp.mapping.scroll_docs(4)";
            "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          };
        };
      };
    };
  };
}
