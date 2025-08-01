{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableVteIntegration = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    history = {
      ignoreAllDups
    };

    oh-my-zsh = {
      enable = true;
      theme = "agnoster";
      plugins = [ 
          "git" 
          "z" 
          "python" 
          "terraform" 
          "git"
          "git-prompt"
          "gitfast"
          "direnv"
          "docker"
          "docker-compose"
      ];
    };

    initExtra = ''
      source ${config.home.homeDirectory}/dotfiles/shell/aliases.zsh
      source ${config.home.homeDirectory}/dotfiles/shell/functions.zsh
    '';
  };
}
