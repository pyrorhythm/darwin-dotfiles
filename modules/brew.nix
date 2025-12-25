{username, ...}: {
   homebrew = {
     enable = true;

     user = username;

     onActivation = {
       autoUpdate = true;
       cleanup = "zap";
     };

     taps = [
     ];

     brews = [
     ];

     casks = [
     ];
   };
}
