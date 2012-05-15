# encoding: utf-8

FactoryGirl.define do
  factory :venue do 
    name "北京"
    latitude '39.9046670'
    longitude '116.4081980'
    category 'city'
    intro 'a venue intro'

    creator factory: :user
  end
end
