{ pkgs, ... }: {
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
		'';
	};
}
