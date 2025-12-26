{...}: {
   programs = {
      kitty = {
         enable = true;

         font = {
           name = "IBM Plex Mono";
           size = 15;
         };

         shellIntegration.enableZshIntegration = true;
         themeFile = "GitHub_Dark_Dimmed";

         settings = {
           scrollback_lines = 2000;
           enable_audio_bell = false;
         };
       };
   };
}
