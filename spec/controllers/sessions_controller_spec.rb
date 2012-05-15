require 'spec_helper'

describe SessionsController do
  include AuthenticatedTestHelper

  it 'get show' do
  	get :show
  	response.should redirect_to root_path
  end

  it 'not login in, get show' do
  	get :new
  	response.should be_success
  end

  it 'login in, get new' do
  	login_as FactoryGirl.create :user
  	get :new
  	response.should redirect_to root_path
  end

  it 'login in, get oauth login' do
  	login_as FactoryGirl.create :user
  	get :oauth_login
  	response.should redirect_to root_path
  end

end