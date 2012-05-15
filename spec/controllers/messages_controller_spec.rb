require 'spec_helper'

describe MessagesController do
  include AuthenticatedTestHelper

  before :each do
  	@user1 = FactoryGirl.create :user
  	login_as @user1
  end

  it 'GET index, no any messages' do
    get :index, :user_id => @user1.id
    assigns(:unreadbox).should == []
    assigns(:inbox).should == []
    assigns(:outbox).should == []
  end

  it 'GET index, has 1 unreadbox' do
    @user2 = FactoryGirl.create :user
    @message = FactoryGirl.create :message, :from_user_id => @user2.id, :to_user_id => @user1.id

    get :index, :user_id => @user1.id
    assigns(:unreadbox).count.should == 1
    assigns(:inbox).count.should == 1
    # assigns(:outbox).count.should == 1
  end

  it 'GET index, has 2 unreadbox' do
    @user2 = FactoryGirl.create :user
    @message1 = FactoryGirl.create :message, :from_user_id => @user2.id, :to_user_id => @user1.id
    @message2 = FactoryGirl.create :message, :from_user_id => @user2.id, :to_user_id => @user1.id

    get :index, :user_id => @user1.id
    assigns(:unreadbox).count.should == 2
    assigns(:inbox).count.should == 2
    assigns(:outbox).count.should == 0
  end
end