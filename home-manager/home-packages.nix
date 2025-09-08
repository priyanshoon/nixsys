{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    imv
    mpv
    obs-studio
    obsidian
    evince
    pavucontrol

    # CLI utils
    bc
    brightnessctl
    cliphist
    ffmpeg
    ffmpegthumbnailer
    fzf
    grimblast
    htop
    ntfs3g
    mediainfo
    microfetch
    playerctl
    ripgrep
    showmethekey
    udisks
    unzip
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
    gcc

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    google-chrome
    qbittorrent
  ];
}
