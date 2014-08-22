#
# Cookbook Name:: shelter
# Recipe:: default
#
# Copyright 2014, Rafael Dantas Justo

include_recipe "mongodb::default"

apt_repository 'bintray' do
  uri "http://dl.bintray.com/rafaeljusto/deb"
  components ["/"]
  action :add
end

ENV['DEBIAN_FRONTEND'] = "noninteractive"
apt_package 'shelter' do
  action :upgrade
  options "-y --force-yes"
end

template "/usr/shelter/etc/shelter.conf" do
  source "shelter.conf.chef.sample"
  mode 0755
  owner "root"
  group "root"
  variables(
    :base_path          => node["shelter"]["base_path"],
    :log_filename       => node["shelter"]["log_filename"],
    :db_name            => node["shelter"]["db_name"],
    :db_uri             => node["shelter"]["db_uri"],
    :scan_resolver      => node["shelter"]["scan_resolver"],
    :scan_resolver_port => node["shelter"]["scan_resolver_port"],
    :smtp_auth_user     => node["shelter"]["smtp_server"],
    :smtp_auth_user     => node["shelter"]["smtp_auth_user"],
    :smtp_auth_pwd      => node["shelter"]["smtp_auth_pwd"]
  )
end

service 'shelter' do
  provider Chef::Provider::Service::Upstart
  action :start
end
