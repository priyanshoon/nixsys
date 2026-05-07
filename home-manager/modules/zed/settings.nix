{ lib }:
{
    hour_format = "hour24";
    vim_mode = true;
    load_direnv = true;
    base_keymap = "VSCode";
    show_whitespaces = "trailing";
    ui_font_size = lib.mkForce 16;
    buffer_font_size = lib.mkForce 16;
}
