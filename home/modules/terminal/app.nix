{...}: {
   programs = {
      kitty = {
         enable = true;

         font = {
           name = "IBM Plex Mono";
           size = 15;
         };

         settings = {
           scrollback_lines = 2000;
           enable_audio_bell = false;
         };
       };
   };
}
