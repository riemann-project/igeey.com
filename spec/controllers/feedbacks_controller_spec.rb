require 'spec_helper'

describe FeedbacksController do
  include AuthenticatedTestHelper

  it 'GET new' do
    get :new
    assigns(:feedback).should be_a_new(Feedback)
  end

  it 'POST create' do
    @feedback = FactoryGirl.build :feedback
    post :create, :feedback => @feedback
    assigns(:feedback).should == @feedback
  end

  it 'GET index' do
  	@feedback = FactoryGirl.create :feedback
  	get :index
  	assigns(:feedbacks).should include @feedback
	assigns(:feedbacks).should == [@feedback]
  end
end