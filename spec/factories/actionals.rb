# encoding: utf-8

FactoryGirl.define do

  factory :actional do 
  	sequence(:name) { |n| "a actional name-#{n}" }
  	intro 'i am actional intro !我来告诉你吧。'
  	method 'method, i am actional method !我来告诉你吧。'
    association :user
  end

end
