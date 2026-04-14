{ pkgs, ... }:{
    programs.vscode = {
        enable = true;
        extensions = with pkgs.vscode-extensions; [
          bbenoist.nix
          ms-python.python
          golang.go
          twxs.cmake
          vscodevim.vim
          mkhl.direnv
        ];
    };
}
