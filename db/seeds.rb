# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.new(:login => 'admin',:email => 'admin@igee.org',:password => "password",:password_confirmation => "password",:is_admin => 'true').save
FactoryGirl.create_list(:actional, 5)
FactoryGirl.create_list :question, 7
FactoryGirl.create :actional, :name => 'Hello word'
FactoryGirl.create_list :topic, 5
FactoryGirl.create_list :blog, 10
FactoryGirl.create_list :problem, 9
FactoryGirl.create :geo
FactoryGirl.create :tag, :name => "爱聚帮助"
FactoryGirl.create_list :task, 10
FactoryGirl.create_list :badge, 5
