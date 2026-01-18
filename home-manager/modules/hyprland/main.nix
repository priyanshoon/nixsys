{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    settings = {
        splash = false;

      env = [
        # Hint Electron apps to use Wayland
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"
        "XDG_SCREENSHOTS_DIR,$HOME/screens"
      ];

    # wlr-randr --output HDMI-A-1 --mode 1920x1080@74.973000
      monitor = "HDMI-A-1,1920x1080@74.973000,auto,1";

      "$mainMod" = "SUPER";
      "$terminal" = "ghostty";
      "$browser" = "brave";
      "$menu" = "wofi --show drun";

      exec-once = [
        "waybar"
        "wl-paste --type text --watch cliphist store"
      ];

      general = {
        gaps_in = 5;
        gaps_out = 5;

        border_size = 1;

        "col.active_border" = "rgba(d65d0eff) rgba(98971aff) 45deg";
        "col.inactive_border" = "rgba(3c3836ff)";

        resize_on_border = false;

        allow_tearing = false;
        # layout = "master";
      };

      decoration = {
        rounding = 0;

        active_opacity = 1.0;
        inactive_opacity = 1.0;

        shadow = {
          enabled = false;
        };

        blur = {
          enabled = true;
        };
      };

      animations = {
        enabled = false;
      };

      # gestures = {
      #   workspace_swipe = false;
      # };

      master = {
        new_status = "master";
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };

      windowrule = [
        "border_size 0, match:float false, match:workspace w[t1]"
        "suppress_event maximize, match:class .*"
      ];

      workspace = [
        "w[tv1], gapsout:0, gapsin:0"
        "f[1], gapsout:0, gapsin:0"
      ];
    };
  };
}
