{ pkgs, lib, config, inputs, ... }:

{
  languages.ruby = {
    enable = true;
    versionFile = ./.ruby-version;
  };

  enterShell = ''
    bundle
  '';

  packages = [
    pkgs.rubyPackages_3_3.ruby-lsp
  ];
}
