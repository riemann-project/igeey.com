# encoding: utf-8
require 'spec_helper'

describe Kase do
  it 'description' do
    kase = FactoryGirl.create :kase
    kase.description.should =~ /社区小广告/
  end
end
