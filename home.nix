# ~/.config/home-manager/home.nix
{ config, pkgs, ... }:

{
  home.username = "cory";
  home.homeDirectory = "/home/cory";
  home.packages = with pkgs; [
    git
    vim
    neovim
    tmux
  ];

  programs.zsh = {
    enable = true
    oh-my-zsh = {
      enable = true;
      theme = "half-life";
    };
  }
  programs.home-manager.enable = true;
  programs.git = {
    enable = true;
    userName = "cory";
    userEmail = "cory@twitty.codes";
  };

  services.gpg-agnet = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSSHSupport = true;
  };


  home.stateVersion = "24.11";
}