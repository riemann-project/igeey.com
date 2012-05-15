# encoding: utf-8

require 'spec_helper'

describe Tag do
  before :each do
    @tag = FactoryGirl.create :tag
  end
  
  it '#to_s' do
  	@tag.to_s.should == @tag.name
  end

=begin
  it '#count' do
  	@tag.count.should == 1
  end
=end

  it '#user_id' do
  	@tag.user_id.should be_nil
  end

   it '#venue_id' do
  	@tag.venue_id.should be_nil
   end

  it '.tag_list' do
  	@tag2 = FactoryGirl.create :tag, :name => "iGeey"
  	
    # Tag.tag_list.should include @tag.name
    Tag.tag_list.should include @tag2.name
  end
=begin
  it 'taggings' do
    @tag.taggings.should == @tag.tag.taggeds
  end

  it 'questions' do

  end
=end
end
