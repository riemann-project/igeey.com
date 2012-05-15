require 'spec_helper'

describe BadgesController do
  include AuthenticatedTestHelper

  it 'GET get_badges' do
    @user = FactoryGirl.create :user
    login_as @user
    @grant = FactoryGirl.create :grant, :user => @user, :unread => true

    get :get_badges, :user_id => @user.id
    assigns(:badges).should_not be_nil
  end
  
  it 'GET edit' do
    @user = FactoryGirl.create :user, :is_admin => true
    login_as @user
    @badge = FactoryGirl.create :badge
    get :edit, :id => @badge.id, :user_id => @user.id

    response.should be_success
    assigns(:badge).should == @badge
  end

  it 'GET index, not admin' do
  	@badge = FactoryGirl.create :badge
  	get :index
  	assigns(:badges).should be_nil
	response.should redirect_to new_session_path
  end

  it 'GET index, is admin' do
  	@user = FactoryGirl.create :user, :is_admin => true
  	login_as @user
  	@badge = FactoryGirl.create :badge
  	get :index
  	assigns(:badges).should include @badge
  	assigns(:badges).should == [@badge]
  end

  it 'PUT update' do
  	@user = FactoryGirl.create :user, :is_admin => true
  	login_as @user
  	@badge = FactoryGirl.create :badge
  	@badge2 = FactoryGirl.build :badge, :intro => "Badge 2 intro ... ... ..."

  	put :update, :id => @badge, :user_id => @user.id, :badge => @badge2
  	response.should redirect_to badges_path
  	assigns(:badge).intro.should == @badge2.intro
  end
end