{ pkgs, ... }:
let
	clipboardScript = pkgs.writeScriptBin "open_clipboard" ''
	cliphist list | wofi -dmenu | cliphist decode | wl-copy && notify-send "Clipboard" "Item copied to clipboard"
	'';
in {
	home.packages = [ clipboardScript ];
	wayland.windowManager.hyprland.settings = {
		bind = [
			"$mainMod, Return, exec, $terminal"
            "$mainMod, B, exec, $browser"
			"$mainMod, Q, killactive,"
			"$mainMod SHIFT, Q, exit,"
			"$mainMod, Space, togglefloating,"
			"$mainMod, F, fullscreen, 0"
			"$mainMod, P, exec, $menu"
			"$mainMod, V, exec, ${clipboardScript}/bin/open_clipboard"
			"$mainMod SHIFT, S, exec, grimblast copy area"

			# moving focus
			"$mainMod, j, movefocus, l"
			"$mainMod, right, movefocus, r"
			"$mainMod, k, movefocus, u"
			"$mainMod, down, movefocus, d"

			# switching workspace
			"$mainMod, 1, workspace, 1"
			"$mainMod, 2, workspace, 2"
			"$mainMod, 3, workspace, 3"
			"$mainMod, 4, workspace, 4"
			"$mainMod, 5, workspace, 5"
			"$mainMod, 6, workspace, 6"
			"$mainMod, 7, workspace, 7"
			"$mainMod, 8, workspace, 8"
			"$mainMod, 9, workspace, 9"
			"$mainMod, 0, workspace, 10"

			# Moving windows to workspaces
			"$mainMod SHIFT, 1, movetoworkspacesilent, 1"
			"$mainMod SHIFT, 2, movetoworkspacesilent, 2"
			"$mainMod SHIFT, 3, movetoworkspacesilent, 3"
			"$mainMod SHIFT, 4, movetoworkspacesilent, 4"
			"$mainMod SHIFT, 5, movetoworkspacesilent, 5"
			"$mainMod SHIFT, 6, movetoworkspacesilent, 6"
			"$mainMod SHIFT, 7, movetoworkspacesilent, 7"
			"$mainMod SHIFT, 8, movetoworkspacesilent, 8"
			"$mainMod SHIFT, 9, movetoworkspacesilent, 9"
			"$mainMod SHIFT, 0, movetoworkspacesilent, 10"

			# Scratchpad
			"$mainMod, S, togglespecialworkspace,  magic"

            # # Move/resize windows with mainMod + LMB/RMB and dragging
            # "$mainMod, mouse:272, movewindow"
            # "$mainMod, mouse:273, resizeactive"
		];

		bindm =  [
		    "$mainMod, mouse:272, movewindow"
		    "$mainMod, mouse:273, resizeactive"
		];

		# Laptop multimedia keys for volume and LCD brightness
		bindel = [
			",XF86AudioRaiseVolume,  exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
				",XF86AudioLowerVolume,  exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
				",XF86AudioMute,         exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
				",XF86AudioMicMute,      exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
				"$mainMod, bracketright, exec, brightnessctl s 10%+"
				"$mainMod, bracketleft,  exec, brightnessctl s 10%-"
		];

		# Audio playback
		bindl = [
			", XF86AudioNext,  exec, playerctl next"
				", XF86AudioPause, exec, playerctl play-pause"
				", XF86AudioPlay,  exec, playerctl play-pause"
				", XF86AudioPrev,  exec, playerctl previous"
		];
	};
}
