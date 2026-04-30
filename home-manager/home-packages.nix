{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    imv
    obs-studio
    signal-desktop
    shotcut
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
    ntfs3g
    mediainfo
    sops
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
    btop
    file
    wget
    wl-clipboard
    wlr-randr
    bluetui
    zip

    # Coding stuff 
    nodejs
    python312
    libgcc
    glibc
    cmake
    gnumake
    typst
    gcc

    # WM stuff
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    google-chrome
  ];
}
