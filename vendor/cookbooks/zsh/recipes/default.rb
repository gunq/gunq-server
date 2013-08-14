#
# Cookbook Name:: zsh
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "zsh" do
  action :install
end

bash "Set vagrant's shell to zsh" do
  code <<-EOT
    chsh -s /bin/zsh vagrant
  EOT
  not_if 'test "/bin/zsh" = "$(grep vagrant /etc/passwd | cut -d: -f7)"'
end

git "home/vagrant/.oh-my-zsh" do
  repository "git://github.com/robbyrussell/oh-my-zsh.git"
  reference "master"
  action :checkout
  user "vagrant"
  group "vagrant"
end

execute "oh-my-zsh" do
  command 'cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc'
end
