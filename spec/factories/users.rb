# encoding: utf-8

FactoryGirl.define do
  factory :user, aliases: [:creator] do
    sequence(:login) { |n| "makestory#{n + n}" } 
    sequence(:email) { |n| "#{n + n}leekelby@gmail.com" }
    sequence(:name) { |n| "张三#{n}号" } 
    password 'password'
    password_confirmation 'password'
  end
end

