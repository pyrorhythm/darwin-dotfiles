{pkgs, ...}: {
   fonts = {
     packages = with pkgs; [
       material-design-icons
       material-symbols
       symbola
       ibm-plex
       iosevka
     ];
   };
}
