{ pkgs, ... }: {
	i18n.defaultLocale = "en_IN";
    i18n.inputMethod = {
        enabled = "fcitx5";
        fcitx5.addons = with pkgs; [ 
            fcitx5-m17n
            fcitx5-gtk
            qt6Packages.fcitx5-skk-qt
        ];
    };
}
