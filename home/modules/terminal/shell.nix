{ ... }:
{
  programs = {
    zsh = {
      enable = true;

      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;

      initContent = ''
        eval "$(/opt/homebrew/bin/brew shellenv)"
        eval "$(direnv hook zsh)"

        export PATH="$PATH:$HOME/.local/bin:$HOME/go/bin:$HOME/.bun/bin:$HOME/.cargo/bin"

        gacp () {
          git add . && git commit -m "$1" && git push
        }
      '';

      shellAliases = {
        # git aliases

        gbr = "git branch";
        gp = "git push";
        gpl = "git pull";
        gc = "git commit -m";
        gac = "git add . && git commit -m";
        gst = "git status";
        glg = "git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all
";
        gdf = "git diff";
        gco = "git checkout";
        gnb = "git checkout -b";

        # docker aliases

        dc = "docker compose";
        d = "docker";
        dcf = "docker compose -f";
      };

      oh-my-zsh = {
        enable = true;
        plugins = [
          "git"
          "sudo"
          "docker"
          "zoxide"
        ];
      };
    };

    oh-my-posh = {
      enable = true;
      useTheme = "pure";
    };
  };
}
