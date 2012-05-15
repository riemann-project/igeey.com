require 'spec_helper'

describe Solution do
  it '#upers' do
    @solution = FactoryGirl.create :solution
    @vote1 = FactoryGirl.create :vote, :voteable => @solution
    @vote2 = FactoryGirl.create :vote, :voteable => @solution

    @solution.upers.should_not be_nil
    @solution.upers.count.should == 2
  end

  it '#downers' do
    @solution = FactoryGirl.create :solution
    @vote1 = FactoryGirl.create :vote, :voteable => @solution, positive: false
    @vote2 = FactoryGirl.create :vote, :voteable => @solution, positive: false

    @solution.downers.should_not be_nil
    @solution.downers.count.should == 2
  end

  it '#uped_by(user)' do
  	@user = FactoryGirl.create :user
    @solution = FactoryGirl.create :solution, :user => @user
    @vote1 = FactoryGirl.create :vote, :voteable => @solution
    @vote2 = FactoryGirl.create :vote, :voteable => @solution, positive: false

    @solution.uped_by?(@user).should == @vote1
  end
end
