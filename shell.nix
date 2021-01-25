let
  pkgs = import ./default.nix;
in
  pkgs.shellFor {
      packages = ps: [ ps.scratch ];
      tools = {
        haskell-language-server = "latest";
      };
      withHoogle = true;
      exactDeps = true;
  }
