{ lib, ... }: {
    services.mako = {
        enable = true;
        settings = {
            background-color = lib.mkForce "#689d6a";
            progress-color = lib.mkForce "#ebdbb2";
            text-color = lib.mkForce "#1d2021";
            border-color= lib.mkForce "#ebdbb2";
            border-size= lib.mkForce 5;
            border-radius = lib.mkForce 2;
        };
    };
}
