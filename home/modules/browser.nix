{
  zen-browser,
  firefox-addons,
  pkgs,
  ...
}:
{
  imports = [
    zen-browser.homeModules.twilight
  ];

  programs.zen-browser = {
    enable = true;
    setAsDefaultBrowser = true;
    policies = {
      AutofillAddressEnabled = true;
      AutofillCreditCardEnabled = false;
      DisableAppUpdate = true;
      DisableFeedbackCommands = true;
      DisableFirefoxStudies = true;
      DisablePocket = true;
      DisableTelemetry = true;
      DontCheckDefaultBrowser = true;
      NoDefaultBookmarks = true;
      OfferToSaveLogins = false;
      EnableTrackingProtection = {
        Value = true;
        Locked = true;
        Cryptomining = true;
        Fingerprinting = true;
      };
    };
    profiles.default = {
      settings = {
        browser = {
          tabs.warnOnClose = false;
          download.panel.shown = false;
        };
      };
      extensions.packages = with firefox-addons.packages.${pkgs.stdenv.hostPlatform.system}; [
        ublock-origin
        privacy-badger
        # improved-tube
        auto-tab-discard
        decentraleyes
        adaptive-tab-bar-colour
        sponsorblock
      ];

      mods = [
        "642854b5-88b4-4c40-b256-e035532109df"
        "e122b5d9-d385-4bf8-9971-e137809097d0"
        "5941aefd-67b0-453d-9b62-9071a31cbb0d"
        "a5f6a231-e3c8-4ce8-8a8e-3e93efd6adec"
      ];

      search = {
        force = true;
        default = "ddg";
        engines = {
          mynixos = {
            name = "My NixOS";
            urls = [
              {
                template = "https://mynixos.com/search?q={searchTerms}";
                params = [
                  {
                    name = "query";
                    value = "searchTerms";
                  }
                ];
              }
            ];

            icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
            definedAliases = [ "@nx" ];
          };
          gopkg = {
            name = "go packages";
            urls = [
              {
                template = "https://pkg.go.dev/search?q={searchTerms}";
                params = [
                  {
                    name = "query";
                    value = "searchTerms";
                  }
                ];
              }
            ];
            definedAliases = [ "@pkgo" ];
          };
        };
      };
    };
  };
}
