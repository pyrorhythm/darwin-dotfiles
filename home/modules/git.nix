{
  lib,
  username,
  email,
  ...
}: {
  home.activation.removeExistingGitconfig = lib.hm.dag.entryBefore ["checkLinkTargets"] ''
    rm -f ~/.gitconfig
  '';

  programs = {
      git = {
         enable = true;
         lfs.enable = true;

         # includes = [
         #    {
         #       path = "~/work/.gitconfig";
         #       condition = "gitdir:~/work/";
         #    }
         # ];
         #
         # TODO do pyrorhythm.dev / github.com logic

         settings = {
            init = {
               defaultBranch = "master";
            };

            push = {
               autoSetupRemote = true;
            };

            pull = {
               rebase = true;
            };

            user = {
               name = username;
               email = email;
            };

            alias = {
               br = "branch";
               co = "checkout";
               st = "status";
               ls = "log --pretty=format:\"%C(yellow)%h%Cred%d\\\\ %Creset%s%Cblue\\\\ [%cn]\" --decorate";
               ll = "log --pretty=format:\"%C(yellow)%h%Cred%d\\\\ %Creset%s%Cblue\\\\ [%cn]\" --decorate --numstat";
               cm = "commit -m";
               ca = "commit -am";
               dc = "diff --cached";
               amend = "commit --amend -m";

               update = "submodule update --init --recursive";
               foreach = "submodule foreach";
            };
         };


      };

      delta = {
         enable = true;
         options = {
            features = "side-by-side";
         };
      };
  };
}
