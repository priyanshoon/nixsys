{ pkgs, ...}: {
    services.jellyfin = {
        enable = false;
        openFirewall = true;
        user = "priyanshoon";
    };
    environment.systemPackages = [
        pkgs.jellyfin
        pkgs.jellyfin-web
        pkgs.jellyfin-ffmpeg
    ];
}
