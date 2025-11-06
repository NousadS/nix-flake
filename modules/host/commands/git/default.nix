{ config, lib, pkgs, mkModule, ... } @ args:

mkModule {  programs.git = {
    enable = true;
    userName  = "John Doe";
    userEmail = "johndoe@example.com";config = {

    };
  };
}
