#
# Cookbook Name:: vps
# Recipe:: default
#
# Copyright (C) 2014 Chance Zibolski
#
# All rights reserved - Do Not Redistribute
#

include_recipe "git"
include_recipe "vim"
include_recipe "zsh"
include_recipe "python"
include_recipe "users"
include_recipe "build-essential"
include_recipe "docker"

node['vps']['packages'].each do |pkg|
  package pkg do
    action :install
  end
end