# encoding: utf-8

FactoryGirl.define do

  factory :comment do 
    # commentable_id nil # Problem.first.id
    commentable Problem.create(title: '社区小广告',
                               intro: '社区小广告,社区小广告,社区小广告...',
                               user_id: 1,
                               published: true)

    commentable_type 'Problem'
    content "e.. ...很有意思，我来告诉你吧!!!"
    association :user
  end

end
