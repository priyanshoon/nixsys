{pkgs, lib, ... }: {
  programs.zed-editor = {
    enable = true;
    userSettings = {
      vim_mode = true;
      ui_font_size = lib.mkForce 16;
      buffer_font_family = lib.mkForce "Mononoki Nerd Font";
      buffer_font_size = lib.mkForce 20;
    };
  };
}
