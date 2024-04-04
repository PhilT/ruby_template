with (import <nixpkgs> {});
let
  gems = bundlerEnv {
    ruby = ruby_3_3;
    name = "gems-for-ruby-template";
    gemdir = ./.;
    extraConfigPaths = [ "${./.}/.ruby-version" ];
  };
in mkShell { 
  packages = [ 
    bundix
    
    gems 
    gems.wrappedRuby
  ]; 
}
