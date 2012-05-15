require 'spec_helper'

describe Actional do
  before :each do
    @actional = FactoryGirl.create :actional
  end

  it 'taggings' do
    @actional.taggings.should == @actional.tag.taggeds
  end


end
