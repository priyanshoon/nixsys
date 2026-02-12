{ pkgs, lib, ... }:
{
  programs.zed-editor = {
    enable = true;
    extraPackages = [ pkgs.nixd ];
    userSettings = {
      vim_mode = true;
      vim = {
        use_system_clipboard = "on_yank";
      };
      ui_font_size = lib.mkForce 16;
      buffer_font_family = lib.mkForce "ComicShannsMono Nerd Font";
      buffer_font_size = lib.mkForce 19;
      project_panel = {
        dock = "right";
      };
    };
    userKeymaps = [
      {
        context = "Editor && VimMode == visual";
        bindings = {
          "space y" = "editor::Copy";
        };
      }
    ];
  };
}
