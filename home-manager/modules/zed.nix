{pkgs, lib, ... }: {
  programs.zed-editor = {
    enable = true;

    extensions = [
      "nix"
      "toml"
      "basher"
    ];

    extraPackages = [ pkgs.nixd ];

    userSettings = {
      vim_mode = true;
      vim = {
        enable_vim_sneak = true;
      };
      ui_font_size = lib.mkForce 16;
      buffer_font_family = lib.mkForce "Mononoki Nerd Font";
      buffer_font_size = lib.mkForce 20;
      relative_line_numbers = true;
      tab_bar = {
        show = true;
      };

      inlay_hints = {
        enabled = true;
      };

      hour_format = "hour12";
      auto_update = false;

      languages = {
        Markdown = {
          formatter = "prettier";
        };
        JSON = {
          formatter = "prettier";
        };
      };

      lsp = {
        nix = {
          binary = {
            path_lookup = true;
          };
        };

        "clangd" = {
          binary = {
            path = lib.getExe' pkgs.clang-tools "clangd";
          };
        };

        settings = {
          dialyzerEnabled = true;
        };
      };
    };
  };
}
