{
    services.resolved.enable = true;
    services.openvpn.servers.protonVPN = {
        config = ''
        config /home/priyanshoon/docs/nl-free-2.protonvpn.tcp.ovpn \n
        '';
        autoStart = false;
        updateResolvConf = true;
        authUserPass = ''/home/priyanshoon/docs/authvpn.txt'';
    };
}
