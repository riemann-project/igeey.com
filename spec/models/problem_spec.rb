# encoding: utf-8
require 'spec_helper'

describe Problem do
  before do
    @user = FactoryGirl.create(:user)
  end

  describe 'validation' do
    context 'when user create a problem' do
      it 'should be created by title' do
        @problem = Problem.new(:title=>'社区小广告',:user_id=>@user.id)
        @problem.should be_valid
      end
    end
  end

  it 'could be had intro' do
    @problem = Problem.new(:title=>'社区小广告',:user_id=>@user.id,:intro=>'大大小小的社区中到处都是乱贴乱画的小广告')
    @problem.should be_valid
  end

  it 'could be commented' do
    @problem = FactoryGirl.create(:problem)
    @comment = Comment.new(:user_id=>@user.id, :content=>'comment', :commentable_type=>@problem.class.to_s, :commentable_id=>@problem.id)
    @comment.should be_valid
  end

  it 'could be published' do
    @problem = FactoryGirl.create(:problem, :published => true)
    Problem.published.should == [@problem]
  end
end
