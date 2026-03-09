{
    home.shellAliases = {
        g = "git";
        lg = "lazygit";
    };
  programs.git = {
    enable = true;
    signing = {
        key = "~/.ssh/id_ed25519.pub";
        signByDefault = true;
    };
    settings = {
        user = {
            email = "priyanshoon.pg@gmail.com";
            name = "Priyanshu Gupta";
        };
        gpg.format = "ssh";
    };
  };
  programs.lazygit.enable = true;
}
