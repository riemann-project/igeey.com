require 'spec_helper'

describe DoingsController do
  include AuthenticatedTestHelper

  it 'POST create' do
  	@user = FactoryGirl.create :user
    login_as @user
    @doing = FactoryGirl.build :doing, :user => @user

    post :create, :doing => @doing, :user_id => @user.id

    assigns(:doing).user_id.should == @doing.user_id
    # response.should redirect_to @doing.venue
  end

  it 'delete destroy, change doings count' do
    @user = FactoryGirl.create :user
    login_as @user
    @doing = FactoryGirl.create :doing, :user => @user

     expect {
        delete :destroy, :id => @doing.id, :user_id => @user.id
      }.to change(Doing, :count).by(-1)
  end

  it 'delete destroy, @doing be nil' do
    @user = FactoryGirl.create :user
    login_as @user
    @doing = FactoryGirl.create :doing, :user => @user

        delete :destroy, :id => @doing.id, :user_id => @user.id

    assigns(:doing).should_not be_nil
  end
end