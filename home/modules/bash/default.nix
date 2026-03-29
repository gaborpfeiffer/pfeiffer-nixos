{...}:
{
 home.file = {
  bashrc = {
    target = ".config/bash/.bashrc";
    text = ''
      alias gst="git status"
      alias rebuild-thinky="sudo nixos-rebuild switch --flake path:/home/pfeiffer/Projects/pfeiffer-nixos#thinky"
      alias pfeiffer-update-flake="nix flake update"
      alias pfeiffer-garbage-collect="sudo nix-collect-garbage -d"
    '';
  }; 
 }; 
}
