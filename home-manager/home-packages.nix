{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    imv
    mpv
    obs-studio
    signal-desktop
    obsidian
    evince
    gimp3
    pavucontrol
    libreoffice-qt
    hunspell

    # CLI utils
    bc
    brightnessctl
    cliphist
    ffmpeg
    ffmpegthumbnailer
    fzf
    grimblast
    htop
    opencode
    ntfs3g
    mediainfo
    microfetch
    inetutils
    man-db
    man-pages
    qmk
    fd
    usbutils
    playerctl
    ripgrep
    showmethekey
    udisks
    unzip
    jq
    file
    wget
    wl-clipboard
    wlr-randr
    bluetui
    yt-dlp
    zip

    # Coding stuff 
    nodejs
    ghostty
    python311
    libgcc
    typst
    gcc

    # WM stuff
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    google-chrome
    qbittorrent
  ];
}
