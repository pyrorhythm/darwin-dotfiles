{username, ...}: {
   homebrew = {
     enable = true;
     user = username;

     taps = [] ;
     brews = ["acsandmann/tap/rift"] ;
     casks = [] ;
   };
}
