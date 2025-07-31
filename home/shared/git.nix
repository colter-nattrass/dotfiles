{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    package = pkgs.git;

    # Do NOT set user.name/email here — let .gitconfig.local handle that. Use the setup-git.sh script if you need instructions
    userName = null;
    userEmail = null;

    extraConfig = {
      core.editor = "nvim";
      alias = {
        st = "status";
        co = "checkout";
        br = "branch";
        cm = "commit";
        lg = "log --oneline --graph --all";
      };
      include.path = "${config.home.homeDirectory}/.gitconfig.local";
    };
  };
}
