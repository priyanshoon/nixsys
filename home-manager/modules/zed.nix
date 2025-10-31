{pkgs, lib, ... }: {
  programs.zed-editor = {
    enable = true;
    extensions = ["nix" "toml" "make"];
    extraPackages = [ pkgs.nixd ];
    userSettings = {
      vim_mode = true;
      relative_line_numbers = true;
      buffer_font_family = lib.mkForce "JetBrainsMono Nerd Font";
      terminal = {
          font_family = lib.mkForce "JetBrainsMono Nerd Font";
      };
      inlay_hints = {
        enabled = true;
      };
      ui_font_size = lib.mkForce 16;
      auto_install_extensions = true;
      hour_format = "hour12";
      languages = {
        Markdown = {
          formatter = "prettier";
        };
        JSON = {
          formatter = "prettier";
        };
        TOML = {
          formatter = "taplo";
        };
      };

      lsp = {
        nix = {
          binary = {
            path_lookup = true;
          };
        };
        settings = {
          dialyzerEnabled = true;
        };
      };
    };
    themes = {
        # this is my comment
      mode = "system";
      light = "One Light";
      dark = "Gruvbox Material";
    };
  };
}
