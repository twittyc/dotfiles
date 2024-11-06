# ~/.config/home-manager/home.nix
{ config, pkgs, ... }:

{
  home.username = "cory";
  home.homeDirectory = "/home/cory";

  nixpkgs.config = {
    allowUnfree = true;
    packageOverrides = pkgs: {
      _1password = pkgs._1password;
    };
  };

  home.packages = with pkgs; [
    git
    neovim
    tmux
    _1password
  ];

  programs.zsh = {
    enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "half-life";
    };
  };

  programs.home-manager.enable = true;
  programs.git = {
    enable = true;
    userName = "cory";
    userEmail = "cory@twitty.codes";
  };

  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
  };

  home.stateVersion = "24.11";
}