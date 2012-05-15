# encoding: utf-8
FactoryGirl.define do
  factory :problem do
    title '社区小广告'
    intro '社区小广告,社区小广告,社区小广告...'
    user
    published true
  end
end
