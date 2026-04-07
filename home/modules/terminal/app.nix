{ pkgs, ... }:
{
  programs = {
    ghostty = {
      enable = true;
      enableZshIntegration = true;
      package = pkgs.ghostty-bin;
      settings = {
        title = "~tty";
        shell-integration-features = "cursor,sudo,title,no-ssh-env,no-ssh-terminfo,path";
        quick-terminal-position = "center";
        quick-terminal-screen = "macos-menu-bar";
        quick-terminal-animation-duration = "0.4";
        clipboard-write = "ask";
        window-title-font-family = "Iosevka Extended";
        window-subtitle = "working-directory";
        window-vsync = "false";
        window-theme = "ghostty";
        window-padding-balance = "true";
        window-padding-color = "extend";
        background-opacity = "0.90";
        background-blur = "macos-glass-regular";
        cursor-opacity = "0.65";
        font-family = "Iosevka Extended";
        keybind = [ "global:ctrl+shift+grave_accent=toggle_quick_terminal" ];
        macos-titlebar-style = "tabs";
        macos-titlebar-proxy-icon = "hidden";
        macos-option-as-alt = "left";
        macos-window-buttons = "hidden";
        macos-icon = "glass";
        macos-icon-frame = "plastic";
        background = "#2b2b2b";
        foreground = "#dfdfdf";
        selection-background = "#2e436e";
        selection-foreground = "#dfdfdf";
        cursor-color = "#dfdfdf";
        cursor-text = "#2b2b2b";
        palette = [
          "0=#1C1C1C"
          "8=#737373"
          "1=#BD5757"
          "9=#E37774"
          "2=#57965C"
          "10=#73BD79"
          "3=#D6AE58"
          "11=#F5D273"
          "4=#3574F0"
          "12=#548AF7"
          "5=#8150BE"
          "13=#A571E6"
          "6=#238E82"
          "14=#42B1A4"
          "7=#DFDFDF"
          "15=#FFFFFF"
        ];
      };
    };
  };
}
