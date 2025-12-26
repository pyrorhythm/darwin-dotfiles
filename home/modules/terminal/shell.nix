{ ... }: {
  programs = {
    zsh = {
      enable = true;

      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;

      initExtra = ''
         eval "$(/opt/homebrew/bin/brew shellenv)"
      '';

      oh-my-zsh = {
        enable = true;
      };
    };
  };
}
