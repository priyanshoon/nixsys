{
    programs.waybar = {
        enable = true;
        style = ./style.css;
        settings = {
            mainBar = {
                layer = "top";
                position = "top";
                modules-left = [
                    "hyprland/workspaces"
                    "cpu"
                ];
                modules-center = [
                    "clock"
                ];
                modules-right = [
                    "bluetooth"
                    "network"
                    "memory"
                    "pulseaudio"
                    "battery"
                ];

                "hyprland/workspaces" = {
                    format = "{name}: {icon}";
                    format-icons = {
                        active = " ";
                        default = " ";
                    };
                };

                "bluetooth" = {
                    format = "󰂲 ";
                    format-on = "{icon}";
                    format-off = "{icon}";
                    format-connected = "{icon}";
                    format-icons = {
                        "on" = "󰂯 ";
                        "off" = "󰂲 ";
                        "connected" = "󰂱 ";
                    };
                    on-click = "blueman-manager";
                    tooltip-format-connected = "{device_enumerate";
                };

                "clock" = {
                    timezone = "Asia/Kolkata";
                    tooltip = false;
                    format = "{:%H:%M:%S  -  %A, %d}";
                    interval = 1;
                };

                "network" = {
                    format-wifi = "󰤢 ";
                    format-ethernet = "󰈀 ";
                    format-disconnected = "󰤠 ";
                    interval = 5;
                    tooltip-format = "{essid} ({signalStrength}%)";
                    on-click = "nm-connection-editor";
                };

                "cpu" = {
                    interval = 1;
                    format = "  {icon0}{icon1}{icon2}{icon3} {usage:>2}%";
                    format-icons = [ "▁" "▂" "▃" "▄" "▅" "▆" "▇" "█" ];
                    on-click = "ghostty -e htop";
                };

                "memory" = {
                    interval = 30;
                    format = "  {used:0.1f}G/{total:0.1f}G";
                    tooltip-format = "Memory";
                };

                "pulseaudio" = {
                    format = "{icon} {volume}%";
                    format-muted = " ";
                    format-icons = {
                        default = ["" " " " "];
                    };
                    on-click = "pavucontrol";
                };

                "battery" = {
                    interval = 2;
                    states = {
                        warning = 30;
                        critical = 15;
                    };
                    format = "{icon} {capacity}%";
                    format-full= "{icon}  {capacity}%";
                    format-charging= " {capacity}%";
                    format-plugged= " {capacity}%";
                    format-alt= "{icon} {time}";
                    format-icons= [" " " " " " " " " "];
                };
            };
        };
    };
}
