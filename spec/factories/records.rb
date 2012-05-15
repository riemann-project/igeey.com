# encoding: utf-8

FactoryGirl.define do

  factory :record do 
    association :user
    title "行动标题"
    association :task

    association :plan
    # association :venue

    detail "你的问题很有意思，我来告诉你吧。"

    time 10
    money  10 
    online  10
    goods  10

  end

end
