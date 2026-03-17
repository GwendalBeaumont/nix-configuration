{ pkgs, config, ... }:

{
  services.printing = {
    enable = true;
    drivers = with pkgs; [
      cups-filters
      cups-browsed
      hplip
      foomatic-db-ppds
    ];
  };

  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };
  services.samba.enable = true;
}
