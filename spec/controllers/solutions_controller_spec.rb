require 'spec_helper'

describe SolutionsController do
  include AuthenticatedTestHelper

  before :each do
    @problem = FactoryGirl.create :problem
  end

  it 'get index' do
    @solution = FactoryGirl.create :solution, :problem => @problem

    get :index, :problem_id => @problem.id

    assigns(:solutions).should == [@solution]
  end

  it 'get new, but not login' do
    get :new
    response.should_not be_success
  end

  it 'get new, and login' do
    login_as FactoryGirl.create :user

    get :new, :problem_id => @problem
    response.should be_success
    assigns(:solution).should be_a_new(Solution)
  end

  it 'get show' do
    login_as FactoryGirl.create :user
    @solution = FactoryGirl.create :solution, :problem => @problem
    @comment = FactoryGirl.create :comment, :commentable => @solution, :commentable_type => 'Solution'

    get :show, :problem_id => @problem.id, :id => @solution.id

    response.should be_success
    assigns(:problem).should == @problem
    assigns(:solution).should == @solution
    assigns(:comments).should == [@comment]
  end

=begin
    @solution = @problem.solutions.build(params[:solution])
    @solution.user = current_user
    @solution.save
    respond_with @problem
=end

=begin
    it 'no login, POST create' do

    end
=end

  it 'POST create, login in' do
    @user = FactoryGirl.create :user
    login_as @user
    @solution = FactoryGirl.build(:solution, :user => @user, :problem => @problem)

    post :create, :problem_id => @problem.id, :solution => @solution, :user_id => @user.id

    # response.should be_success
    assigns(:solution).should be_a(Solution)
    assigns(:problem).should == @problem
    assigns(:solution).user.should == @user
  end
end
