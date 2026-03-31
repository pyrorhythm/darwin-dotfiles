{ username, ... }:
{
  homebrew = {
    enable = true;
    user = username;

    taps = [ ];
    brews = [
      "mas"
      "qt"
      "qt5compat"
      "cmake"
      "ninja"
    ];
    casks = [ ];

    masApps = {
      Xcode = 497799835;
    };
  };
}
