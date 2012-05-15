require 'spec_helper'

describe FollowsController do
  include AuthenticatedTestHelper

  it 'GET show' do
  	login_as FactoryGirl.create :user

    @follow = FactoryGirl.create :follow, :followable => (FactoryGirl.create :user)
    get :show, :id => @follow.id

    response.should redirect_to @follow.followable
    assigns(:follow).followable.should be_a(User)
  end

  it 'POST create' do
    @user = FactoryGirl.create :user
    login_as @user

    @user2 = FactoryGirl.create :user
    #@follow = FactoryGirl.build :follow, , :user => @user, :followable => @user2

    post :create, :user_id => @user.id, :followable_id => @user2.id, :followable_type => @user2.class.to_s
    response.should redirect_to @user2
  end

end