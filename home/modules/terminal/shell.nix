{ ... }: {
  programs = {
    zsh = {
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;

      initContent = ''
        export PATH="$PATH:$HOME/bin:$HOME/.local/bin:/usr/sbin"
      '';

      oh-my-zsh = {
        enable = true;
      };
    };
  };
}
