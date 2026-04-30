{ pkgs, ... }: {
	networking.networkmanager.enable = true;
    networking.enableIPv6 = false;
    networking.extraHosts = ''
    127.0.0.1 4chan.org
    127.0.0.1 www.4chan.org
    '';

    networking.networkmanager.plugins = with pkgs; [
      networkmanager-openvpn
    ]
    ;

    services.openssh = {
        enable = true;
        settings = {
            PasswordAuthentication = false;
            Banner = "/etc/ssh/banner";
            PermitRootLogin = "no";
        };
    };
}

