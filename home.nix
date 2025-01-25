{ config, pkgs, ... }:

{
    # Home Manager needs a bit of information about you and the paths it should
    # manage.
    home.username = "priyanshoon";
    home.homeDirectory = "/home/priyanshoon";

    # This value determines the Home Manager release that your configuration is
    # compatible with. This helps avoid breakage when a new Home Manager release
    # introduces backwards incompatible changes.
    #
    # You should not change this value, even if you update Home Manager. If you do
    # want to update the value, then make sure to first check the Home Manager
    # release notes.
    home.stateVersion = "24.11"; # Please read the comment before changing.

    nixpkgs = {
        config = {
            allowUnfree = true;
        };
    };

    # The home.packages option allows you to install Nix packages into your
    # environment.
    home.packages = [
        # # Adds the 'hello' command to your environment. It prints a friendly
        # # "Hello, world!" when run.
        # pkgs.hello
        pkgs.vscode
        pkgs.nitch
        pkgs.gimp
        pkgs.ripgrep
        pkgs.fzf

        pkgs.pass

        # # It is sometimes useful to fine-tune packages, for example, by applying
        # # overrides. You can do that directly here, just don't forget the
        # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
        # # fonts?
        (pkgs.nerdfonts.override { fonts = [ "FiraCode" "FantasqueSansMono" ]; })

        # # You can also create simple shell scripts directly inside your
        # # configuration. For example, this adds a command 'my-hello' to your
        # # environment:
        # (pkgs.writeShellScriptBin "my-hello" ''
        #   echo "Hello, ${config.home.username}!"
        # '')
    ];

    # Home Manager is pretty good at managing dotfiles. The primary way to manage
    # plain files is through 'home.file'.
    home.file = {
        # # Building this configuration will create a copy of 'dotfiles/screenrc' in
        # # the Nix store. Activating the configuration will then make '~/.screenrc' a
        # # symlink to the Nix store copy.
        # ".screenrc".source = dotfiles/screenrc;

        # # You can also set the file content immediately.
        # ".gradle/gradle.properties".text = ''
        #   org.gradle.console=verbose
        #   org.gradle.daemon.idletimeout=3600000
        # '';
    };

    # Home Manager can also manage your environment variables through
    # 'home.sessionVariables'. These will be explicitly sourced when using a
    # shell provided by Home Manager. If you don't want to manage your shell
    # through Home Manager then you have to manually source 'hm-session-vars.sh'
    # located at either
    #
    #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
    #
    # or
    #
    #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
    #
    # or
    #
    #  /etc/profiles/per-user/priyanshoon/etc/profile.d/hm-session-vars.sh
    #
    home.sessionVariables = {
        # EDITOR = "emacs";
    };

    gtk = {
        enable = true;
        theme = {
            name = "Gruvbox-Dark";
            package = pkgs.gruvbox-gtk-theme;
        };
        iconTheme = {
            name = "SolArc-Dark";
            package = pkgs.solarc-gtk-theme;
        };
    };

    qt = {
        enable = true;
        platformTheme = {
            name = "gtk3";
        };
        style = {
            name = "gtk2";
        };
    };

    programs.zsh = {
        enable = true;
        shellAliases = {
            vi = "nvim";
            tmux = "tmux -u";
            cls = "clear";
        };
        oh-my-zsh = {
            enable = true;
            theme = "robbyrussell";
        };
        syntaxHighlighting = { enable = true; };
    };

    programs.rofi = {
        enable = true;
        theme = "gruvbox-dark";
    };

    programs.tmux = {
        enable = true;
        prefix = "C-a";
        historyLimit = 5000;
        keyMode = "vi";
    };

    programs.ssh = {
        enable = true;
        extraConfig = ''
      # GitHub Account 1 (Personal)
      Host github.com
        HostName github.com
        User git
        IdentityFile ${config.home.homeDirectory}/.ssh/id_ed25519_personal
        IdentitiesOnly yes

      # GitHub Account 2 (pdp0w)
      Host github.com-pdp0w
        HostName github.com
        User git
        IdentityFile ${config.home.homeDirectory}/.ssh/id_ed25519_pdp0w
        IdentitiesOnly yes
        '';
    };

    programs.git = {
        enable = true;
        userName = "priyanshoon";
        userEmail = "priyanshoon.pg@gmail.com";
    };

    programs.neovim = 
        let
            toLua = str: "lua << EOF\n${str}\nEOF\n";
            toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
        in {
            enable = true;

            viAlias = true;

            extraPackages = with pkgs; [
                lua-language-server
                # rnix-lsp
                gopls

                wl-clipboard
            ];

            plugins = with pkgs.vimPlugins; [
                {
                    plugin = comment-nvim;
                    config = toLua "require(\"Comment\").setup()";
                }

                {
                    plugin = gruvbox-nvim;
                    config = "colorscheme gruvbox";
                }

                {
                    plugin = nvim-lspconfig;
                    config = toLuaFile ./nvim/plugin/lsp.lua;
                }

                {
                    plugin = nvim-cmp;
                    config = toLuaFile ./nvim/plugin/cmp.lua;
                }

                {
                    plugin = telescope-nvim;
                    config = toLuaFile ./nvim/plugin/telescope.lua;
                }

                vim-fugitive
                telescope-fzf-native-nvim
                cmp_luasnip
                cmp-nvim-lsp
                luasnip
                friendly-snippets
                lualine-nvim
                undotree
                plenary-nvim

                {
                    plugin = (nvim-treesitter.withPlugins (p: [
                        p.tree-sitter-nix
                        p.tree-sitter-go
                        p.tree-sitter-cpp
                        p.tree-sitter-vim
                        p.tree-sitter-bash
                        p.tree-sitter-lua
                        p.tree-sitter-python
                        p.tree-sitter-json
                    ]));
                    config = toLuaFile ./nvim/plugin/treesitter.lua;
                }
            ];

            extraLuaConfig = ''
                ${builtins.readFile ./nvim/option.lua}
                ${builtins.readFile ./nvim/remap.lua}
                ${builtins.readFile ./nvim/plugin/other.lua}
            '';
        };

    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;
}
