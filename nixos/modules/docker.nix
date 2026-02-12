{
    virtualisation.docker = { 
        enable = true;
    };

    users.users.priyanshoon.extraGroups = [ "docker" ];
}
