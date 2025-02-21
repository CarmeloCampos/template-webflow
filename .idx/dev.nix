{ pkgs, ... }: {
  channel = "stable-24.05";

  packages = [
    pkgs.python311
  ];

  env = {};

  idx = {
    extensions = [
      "vivaxy.vscode-conventional-commits"
    ];

    previews = {
      enable = true;
      previews = {
        web = {
          command = ["python" "server.py"];
          manager = "web";
           env = {
            PORT = "$PORT";
          };
        };
      };
    };
  };
}