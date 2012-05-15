# encoding: utf-8

FactoryGirl.define do

  factory :question do 
    association :user
    title "你的问题很有意思,问题要有起码的字数吧？"
    sequence(:tag_list) { |n| "学校的问题-#{n}" } 
  end

end
