{pkgs ? import <nixpkgs> {}}:
   
pkgs.mkShell {
  name = "IMGui";
  buildInputs = with pkgs; [ cmake imgui];
  # Delete this variable from Makefile and set it here
  shellHook = ''
    export IMGUI_PATH="${pkgs.imgui}/imgui"
    '';
  }
