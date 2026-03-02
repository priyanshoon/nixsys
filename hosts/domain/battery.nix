{inputs, ...}:{
    imports = [
      inputs.nixos-hardware.nixosModules.asus-battery
    ];
    services.tlp = {
        enable = true;
        settings = {
            START_CHARGE_THRESH_BAT1 = 40;  # Start charging at 40%
                STOP_CHARGE_THRESH_BAT1 = 80;   # Stop charging at 80%
        };
    };   
}

# lrwxrwxrwx  1 root root 0 Mar  2 20:07 ACAD -> ../../devices/platform/ACPI0003:00/power_supply/ACAD
# lrwxrwxrwx  1 root root 0 Mar  2 20:07 BAT1 -> ../../devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0A:00/power_supply/BAT1
#
