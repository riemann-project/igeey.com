# encoding: utf-8
require 'spec_helper'

describe KasesController do
  include AuthenticatedTestHelper

  before :each do
    @problem = FactoryGirl.create :problem
  end

  it 'GET index' do
    @kase1 = FactoryGirl.create :kase, :problem => @problem
    @kase2 = FactoryGirl.create :kase, :problem => @problem

    get :index, :problem_id => @problem.id
    assigns(:kases).should == [@kase1, @kase2]
  end

  it 'GET new' do
  	@user = FactoryGirl.create :user
    login_as @user
    get :new, :problem_id => @problem.id, :user_id => @user.id

    assigns(:kase).should be_a_new(Kase)
  end

  it 'PUT update' do
    @user = FactoryGirl.create :user
    login_as @user
    @kase = FactoryGirl.create :kase, :problem => @problem, :user => @user
    @kase2 = FactoryGirl.build :kase, :problem => @problem, :user => @user, :photo_file_name => 'rails2.png'
    
    put :update, :id => @kase, :problem_id => @problem.id, :user_id => @user.id, :kase => @kase2
    assigns(:kase).photo_file_name.should_not == @kase.photo_file_name
    assigns(:kase).photo_file_name.should == @kase2.photo_file_name
    response.should redirect_to "#{problem_path(@problem)}/kases/#{@kase.id}"
  end

  it 'DELETE destroy' do
    @user = FactoryGirl.create :user
    login_as @user
    @kase = FactoryGirl.create :kase, :problem => @problem, :user => @user
    delete :destroy, :user_id => @user, :problem_id => @problem, :id => @kase.id
    response.should redirect_to @problem
    assigns(:kase).should_not == @kase
  end
=begin
  it 'post create' do
  	@user = FactoryGirl.create :user
    login_as @user
    @problem = FactoryGirl.create :problem
    @kase = FactoryGirl.build :kase, :user_id => @user.id, :problem_id => @problem.id

    post :create, :kase => @kase, :problem_id => @problem.id, :user_id => @user.id, 

    response.should be_success
  end
=end
end