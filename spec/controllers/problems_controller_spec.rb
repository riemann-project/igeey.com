# encoding: utf-8
require 'spec_helper'

describe ProblemsController do
  include AuthenticatedTestHelper

  it 'get new' do
    get :new
    response.should be_success
    assigns(:problem).should be_a_new(Problem)
  end

  it 'check_admin should be fail' do
    get :index
    response.should redirect_to root_path
  end
=begin 
  it 'get followers' do
    get :followers
    response.should be_success
  end

  it 'get map' do
    get :map 
    response.should be_success
  end
=end
=begin NOTE: unknown show action !
  it 'no login_as admin, so redirect_to root_path' do
    get :show
    response.should redirect_to root_path
  end

  it 'current_user && current_user.is_admin' do
    login_as FactoryGirl.create(:user, :is_admin => true)
    problem1 = FactoryGirl.create :problem
    problem2 = FactoryGirl.create :problem
    problem3 = FactoryGirl.create :problem
    problem4 = FactoryGirl.create :problem
    problem5 = FactoryGirl.create :problem
    problem6 = FactoryGirl.create :problem
    problem7 = FactoryGirl.create :problem
    problem8 = FactoryGirl.create :problem

    get :show

    assigns(:kase).should be_a_new(Kase)
    assigns(:feedback).should be_a_new(Feedback)
  end
=end

  it 'get map' do
    @problem = FactoryGirl.create :problem
    kase = FactoryGirl.create(:kase, :problem => @problem)
    kase1 = FactoryGirl.create(:kase1, :problem => @problem)
    kase2 = FactoryGirl.create(:kase2, :problem => @problem)
    kase3 = FactoryGirl.create(:kase3, :problem => @problem)
    kase4 = FactoryGirl.create(:kase4, :problem => @problem)
    kase5 = FactoryGirl.create(:kase5, :problem => @problem)
    kase6 = FactoryGirl.create(:kase6, :problem => @problem)

    get :map 

    assigns(:kases).should == [kase, kase1, kase2, kase3, kase4, kase5, kase6]
  end

  it 'get thanks' do
    get :thanks, :layout => false
    response.should render_template(:layout => false)
  end

  it 'check_admin should be success' do
    @problem = FactoryGirl.create :problem
    login_as(FactoryGirl.create(:user, :is_admin => true))
    get :index
    response.should be_success
    assigns(:problems).should == [@problem]
  end

  it 'not sign_in, so update fail' do
    @problem = FactoryGirl.create(:problem)
    @problem.title = 'test'
    expect { put :update, :id => @problem.id }.to raise_error
  end

  describe "For create" do
    def valid_attributes
      FactoryGirl.attributes_for(:problem)
    end

    before :each do
      login_as(FactoryGirl.create(:user, :is_admin => true))
      @problem = FactoryGirl.create(:problem)
    end

=begin
    it "update other's problem should be_fail" do
      new_problem = FactoryGirl.create :problem
      login_as new_problem.user
      @problem.title = 'test problem title'
      expect { put :update, :id => @problem.id }.to raise_error
    end
=end

    describe "with valid params" do
      it "creates a new problem" do
        expect {
          post :create, :problem => valid_attributes
        }.to change(Problem, :count).by(1)
      end

      it "assigns a newly created problem as @problem" do
        post :create, :problem => valid_attributes
        assigns(:problem).should be_a(Problem)
        assigns(:problem).should be_persisted
      end

    end
  end
end
