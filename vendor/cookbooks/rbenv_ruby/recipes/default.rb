#
# Cookbook Name:: rbenv_ruby
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'rbenv::default'
include_recipe 'rbenv::ruby_build'

rbenv_ruby "2.0.0-p247" do
  ruby_version "2.0.0-p247"
  global true
end

rbenv_gem "bundler" do
  ruby_version "2.0.0-p247"
  version "1.4.0.pre.1"
end
