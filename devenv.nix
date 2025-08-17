{
  pkgs,
  lib,
  config,
  inputs,
  ...
}: {
  packages = [pkgs.git pkgs.yq];

  languages.python = {
    enable = true;
    poetry.enable = true;
  };


  scripts.make-cv.exec = ''
    rendercv render Alexander_Reinthal_CV.yaml
  '';

  # https://devenv.sh/pre-commit-hooks/
  pre-commit.hooks.shellcheck.enable = true;

}
