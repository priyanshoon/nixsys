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
    brightnessctl
    cliphist
    ffmpeg
    ffmpegthumbnailer
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
    gnumake
    btop
    file
    wget
    wl-clipboard
    wlr-randr
    bluetui
    yt-dlp
    zip

    # Coding stuff 
    nodejs
    python312
    libgcc
    glibc
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
