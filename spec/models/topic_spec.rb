require 'spec_helper'

describe Topic do
  before :each do
    @tag = FactoryGirl.create :topic
  end

=begin
  it 'taggings' do
    @tag.taggings.should == @tag.tag.taggeds
  end

  it 'questions' do

  end
=end
end
