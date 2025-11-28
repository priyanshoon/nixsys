{ pkgs, ... }: 
let
    tmux-sessionizer = pkgs.writeScriptBin "tmux-sessionizer" ''
    selected=$(find ~/personal -mindepth 1 -maxdepth 1 -type d | fzf)
    if [[ -z "$selected" ]]; then
        exit 0
    fi

    selected_name=$(basename $selected | tr ":,. ", "____")

    switch_to() {
        if [[ -z "$TMUX" ]]; then
            tmux -u attach-session -t $selected_name
        else
            tmux -u switch-client -t $selected_name
        fi
    }

    if tmux has-session -t=$selected_name 2> /dev/null; then
        switch_to
    else
        tmux -u new-session -ds $selected_name -c $selected
        switch_to
    fi
    '';
in {
    home.packages = [
        tmux-sessionizer
    ];

	programs.tmux = {
		enable = true;
		baseIndex = 1;
		escapeTime = 0;
		keyMode = "vi";
		terminal = "screen-256color";
		extraConfig = ''
		unbind C-b
		set-option -g prefix C-a
		bind-key C-a send-prefix
		bind -T copy-mode-vi v send-keys -X begin-selection
		bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'xclip -in -selection clipboard'
		bind r source-file $XDG_CONFIG_HOME/tmux/tmux.conf \; display-message "tmux.conf reloaded"

		bind -r h select-pane -L
		bind -r j select-pane -D
		bind -r k select-pane -U
		bind -r l select-pane -R

        bind-key C-t run-shell "tmux-sessionizer"
		'';
	};
}
