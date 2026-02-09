{ inputs, config, lib, pkgs, ... }:

{
  programs.firefox = {
    enable = true;

    languagePacks = [
      "en-GB"
      "fr"
    ];

    policies = {
      "AutofillAddressEnabled" = false;
      "AutofillCreditCardEnabled" = false;
      "DisableFormHistory" = true;
      "DisableProfileImport" = true;
      "DNSOverHTTPS" = {
        "Enabled" = true;
        "ProviderURL" = "https://adblock.dns.mullvad.net/dns-query";
        "Locked" = true;
        "Fallback" = false;
      };
      "OfferToSaveLoginsDefault" = false;
      "PasswordManagerEnabled" = false;
      "SanitizeOnShutdown" = {
        "Cache" = true;
        "Cookies" = false;
        "FormData" = true;
        "History" = false;
        "Sessions" = false;
        "SiteSettings" = false;
        "Locked" = false;
      };
      "SearchEngines" = {
        "Add" = [
          {
            "Name" = "Qwant";
            "URLTemplate" = "https://www.qwant.com/?q={searchTerms}";
            "Method" = "GET";
            "IconURL" = "https://qwant.com/favicon.ico";
            "Alias" = "@qwant";
            "Description" = "Search with Qwant";
          }
          {
            "Name" = "Nixpkgs (unstable)";
            "URLTemplate" = "https://search.nixos.org/packages?channel=unstable&query={searchTerms}";
            "Method" = "GET";
            "IconURL" = "https://nixos.org/favicon.ico";
            "Alias" = "@nix";
            "Description" = "Search in nixpkgs (unstable)";
          }
        ];
        "Default" = "Qwant";
      };
    };
  };
}
