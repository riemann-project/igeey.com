require 'spec_helper'

describe Blog do
  it '#summary' do
  	@blog = FactoryGirl.create :blog

  	@blog.summary.should == @blog.content
  end

  it '#summary invalidate' do
  	@blog = FactoryGirl.create :blog

  	@blog.summary.should_not be_nil
  end
end
