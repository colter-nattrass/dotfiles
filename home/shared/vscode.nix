{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      ms-python.python
      ms-azuretools.vscode-docker
      eamodio.gitlens
      hashicorp.terraform
    ];
  };

  home.file.".config/Code/User/settings.json".source =
    ../../config/vscode/settings.json;
}
