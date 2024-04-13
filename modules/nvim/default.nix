{ pkgs, nixvim, ... }: {
  programs.nixvim = {
    enable = true;
    globals.mapleader = " ";
    clipboard.register = "unnamedplus";
    colorschemes.rose-pine.enable = true;
    options = {
      number = true;
      relativenumber = true;
      shiftwidth = 4;
      expandtab = true;
      smartindent = true;
      autoindent = true;
      wrap = false;
    };
    keymaps = [
      {
        action = "<CMD>Neotree<CR>";
        key = "<Leader>t";
        mode = ["n"];
      } {
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
        action = "vim.lsp.buf.definition";
        key = "gd";
        mode = ["n"];
        lua = true;
      }
      {
        action = "vim.lsp.buf.declaration";
        key = "gD";
        mode = ["n"];
        lua = true;
      }
      {
        action = "vim.lsp.buf.references";
        key = "gr";
        mode = ["n"];
        lua = true;
      }
    ];
    plugins = {
      treesitter.enable = true;
      oil.enable = true;
      luasnip.enable = true;
      which-key = {
        plugins = {
          presets.motions = true;
          presets.nav = true;
          presets.windows = true;
        };
        enable = true;
        triggers = "auto";
      };

      lsp = {
        enable = true;
        servers = {
          rust-analyzer = {
            enable = true;
            installRustc = true;
            installCargo = true;
          };
          csharp-ls.enable = true;
          nixd.enable = true;
        };
      };
      neo-tree = {
        enable = true;
        closeIfLastWindow = true;
      };
      nvim-cmp = {
        enable = true;
        autoEnableSources = true;
        snippet.expand = "luasnip";
        sources = [
          { name = "nvim_lsp"; }
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
}
