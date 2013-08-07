#
# Cookbook Name:: test
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'rbenv::default'
include_recipe 'rbenv::ruby_build'

rbenv_ruby "2.0.0-p195" do
  ruby_version "2.0.0-p195"
  global true
end
