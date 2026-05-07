{ pkgs, lib, ... }: let
    extensions = import ./extensions.nix;
    terminal = import ./terminal.nix;
    lsp = import ./lsp.nix;
    settings = import ./settings.nix { inherit lib; };
in {
    programs.zed-editor = {
        enable = true;
        extensions = extensions;
        extraPackages = [ pkgs.nixd ];
        userSettings =
            settings
            // {
            terminal = terminal;
            lsp = lsp;
        };
    };
}
