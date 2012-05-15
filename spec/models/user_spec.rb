require 'spec_helper'

describe User do
  describe "Authenticate" do
    before :each do
      @user = FactoryGirl.create :user, :login => 'kelby', :email => 'kelby@gmail.com'
    end

    it '.authenticate is ok' do
      u = User.authenticate('kelby', 'password')
      u.should == @user
    end

    it '.authenticate, but wrong login' do
      u = User.authenticate('kelbyy', 'password')
      u.should be_nil
    end

    it '.authenticate, but wrong password' do
      u = User.authenticate('kelby', 'passwordd')
      u.should be_nil
    end
  end

  it '#venues_count' do
    @user = FactoryGirl.create :user
    @venue = FactoryGirl.create :venue, :creator => @user

    @user.venues_count.should == 1
  end

  describe "Message" do
    before :each do
      @user1 = FactoryGirl.create :user
      @user2 = FactoryGirl.create :user
      @message = FactoryGirl.create(:message, :from_user => @user1, :to_user => @user2)
    end

    it 'inbox message' do
      @user2.inbox.should == [@message]
    end

    it 'outbox message' do
      @user1.outbox.should == [@message]
    end

    it 'unreadbox message' do
      @user2.unreadbox.count.should == 1
      @user2.unreadbox.should == [@message]
    end
  end
end
