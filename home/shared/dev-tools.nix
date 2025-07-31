{ pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    python311
    poetry
    terraform
    dbt-core
    clickhouse
    jq
  ];
}
