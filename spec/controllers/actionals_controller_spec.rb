require 'spec_helper'

describe ActionalsController do
  include AuthenticatedTestHelper

  it 'GET new' do
    login_as FactoryGirl.create :user
    get :new
    assigns(:actional).should be_a_new(Actional)
  end

  it 'GET new' do
    get :new
    assigns(:actional).should_not be_a_new(Actional)
  end

  describe "GET Methods" do
    before :each do
      @actional = FactoryGirl.create :actional
    end
    
    # it 'PUT update' do
    #   @user = FactoryGirl.create :user
    #   login_as @user
    #   @actional2 = FactoryGirl.build :actional, :user => @user, :intro => 'a tag tag intro'

    #   put :update, :actional => @actional2, :user_id => @user.id, :id => @actional
    #   response(:actional).intro.should == 'a tag tag intro'
    # end

    it 'GET show' do
      get :show, :id => @actional
      assigns(:actional).should == @actional
      assigns(:question).should be_a_new(Question)
      assigns(:timeline).should == []
    end

    it 'Get index' do
      get :index
      response.should be_true
    end

  end
end
