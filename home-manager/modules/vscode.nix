{ pkgs, ... }:{
    programs.vscode = {
        enable = true;
        extensions = with pkgs.vscode-extensions; [
          bbenoist.nix
          golang.go
          twxs.cmake
          vscodevim.vim
          mkhl.direnv
        ];
    };
}
