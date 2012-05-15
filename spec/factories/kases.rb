# encoding: utf-8

FactoryGirl.define do

  factory :kase do 
    association :user
    association :problem
    photo_file_name 'rails.png'
    intro 'wo 上传 de 图片'
    address '北京'
    happened_at '2012-04-29'
  end

  factory :kase1, :class => Kase do 
    association :user
    photo_file_name 'rails.png'
    intro 'wo 上传 de 图片 1'
    address '上海'
    happened_at '2012-04-29'
  end

  factory :kase2, :class => Kase do 
    association :user
    photo_file_name 'rails.png'
    intro 'wo 上传 de 图片 2'
    address '桂林'
    happened_at '2012-02-22'
  end

  factory :kase3, :class => Kase do 
    association :user
    photo_file_name 'rails.png'
    intro 'wo 上传 de 图片'
    address '南京'
    happened_at '2012-04-29'
  end

  factory :kase4, :class => Kase do 
    association :user
    photo_file_name 'rails.png'
    intro 'wo 上传 de 图片 4'
    address '成都'
    happened_at '2012-04-24'
  end

  factory :kase5, :class => Kase do 
    association :user
    photo_file_name 'rails.png'
    intro 'wo 上传 de 图片 5'
    address '杭州'
    happened_at '2012-04-25'
  end

  factory :kase6, :class => Kase do 
    association :user
    photo_file_name 'rails.png'
    intro 'wo 上传 de 图片 6'
    address '南宁'
    happened_at '2012-06-26'
  end

end
