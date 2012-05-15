require 'spec_helper'

describe Event do
  before :each do
    @tag = FactoryGirl.create :event
  end

=begin
  it 'taggings' do
    @tag.taggings.should == @tag.tag.taggeds
  end

  it 'questions' do

  end
=end
end
