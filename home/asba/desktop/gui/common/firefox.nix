{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
  programs.firefox = {
    enable = true;
    profiles.default = {
      extensions = with pkgs.nur.repos.rycee.firefox-addons; [
        bitwarden
	firefox-color
      ];
      settings = {
        "extensions.autoDisableScopes" = 0;
      };
    };
  };
}