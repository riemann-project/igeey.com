# encoding: utf-8

FactoryGirl.define do

  factory :badge do 
  	sequence(:name) { |n| "I am a Badge-#{n}" } 
  	condition_factor 'This get a badge s condition'
  	condition_number 200
  	cover_file_name 'rails.png'
  	intro "I am a Badge, you have any question?!，我来告诉你吧。"
  end

end