{pkgs, ...}: {
   environment = {
     variables = {
       SSH_AUTH_SOCK = "$XDG_RUNTIME_DIR/ssh-agent";
     };
     shells = [
       pkgs.zsh
     ];
   };

   programs.zsh.enable = true;
}
