require 'spec_helper'

describe Comment do
  before :each do
    @problem = FactoryGirl.create :problem
    @comment = FactoryGirl.create :comment, :commentable => @problem
  end

  it 'test after create' do
    @comment.commentable.should == @problem
    @comment.commentable.should be_a(Problem)
  end

  it 'commentable.last_replied_user_id' do
    @comment.commentable.last_replied_user_id.should == @comment.user.id
  end
end

