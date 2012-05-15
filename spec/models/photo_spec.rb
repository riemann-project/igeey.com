require 'spec_helper'

describe Photo do
  before :each do
    @tag = FactoryGirl.create :photo
  end

=begin
  it 'taggings' do
    @tag.taggings.should == @tag.tag.taggeds
  end

  it 'questions' do

  end
=end
end
