{ pkgs, ... }:
{
  programs = {
    ghostty = {
      enable = true;
      enableZshIntegration = true;
      package = pkgs.ghostty-bin;
      settings = {
        title = "~tty";
        window-subtitle = "working-directory";
        macos-titlebar-style = "tabs";
        macos-titlebar-proxy-icon = "hidden";
        macos-option-as-alt = "left";
        macos-window-buttons = "hidden";
        macos-icon = "glass";
        macos-icon-frame = "plastic";
        font-family = "Iosevka Extended";
      };
    };
  };
}
