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
include_recipe "rvm::system"

include_recipe "python"
include_recipe "sudo"
include_recipe "users"
include_recipe "openssh"
include_recipe "build-essential"
include_recipe "docker"

node['base']['packages'].each do |pkg|
  package pkg do
    action :install
  end
end

node['base']['pip_packages'].each do |pkg|
  python_pip pkg do
    action :install
  end
end

users_manage "chance" do
  action :create
end
