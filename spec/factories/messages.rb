# encoding: utf-8

FactoryGirl.define do

  factory :message do 
    #from_user (association :user)
    #to_user (association :question)
    content "你的问题很有意思，我来告诉你吧。"
  end

end
