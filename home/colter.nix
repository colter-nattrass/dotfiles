{ config, pkgs, username, ... }:

{
  imports = [
    ./shared/shell.nix
    ./shared/devtools.nix
    ./shared/vscode.nix
    ./shared/git.nix
  ];

  home.username = username;
  home.homeDirectory = "/home/${username}";

  home.stateVersion = "24.05";
}
