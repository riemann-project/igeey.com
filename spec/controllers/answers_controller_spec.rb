require 'spec_helper'

describe AnswersController do
  include AuthenticatedTestHelper

  it 'ok, post create' do
    @user = FactoryGirl.create :user
    @question = FactoryGirl.create :question
    login_as @user

    post :create, :question_id => @question, :user_id => @user

    response.should redirect_to @question
    assigns(:answer).should be_a_new(Answer) 
  end

  it 'not login, post create' do
    @user = FactoryGirl.create :user
    @question = FactoryGirl.create :question

    post :create, :question_id => @question, :user_id => @user

    response.should_not redirect_to @question
    response.should_not render_template :new
    assigns(:answer).should be_nil
  end
  
  it 'put update 1' do
    @user = FactoryGirl.create :user
    @answer = FactoryGirl.create :answer
    login_as @user
    @answer2 = FactoryGirl.build :answer, :user => @user, :content => ''

    put :update, :id => @answer.id, :user_id => @user.id, :answer => @answer2
    assigns(:answer).content.should_not == @answer.content
  end

  it 'put update 2' do
    @user = FactoryGirl.create :user
    @answer = FactoryGirl.create :answer, :user => @user
    @answer2 = FactoryGirl.create :answer, :user => @user, :content => "answer2 content"
    login_as @user

    put :update, :id => @answer, :user_id => @user.id, :answer => @answer2
    assigns(:answer).content.should_not == @answer.content
    assigns(:question).should == @answer.question
    response.should redirect_to @answer.question
  end

  it 'put update 3' do
    @user = FactoryGirl.create :user
    @answer = FactoryGirl.create :answer, :user => @user
    @answer2 = FactoryGirl.create :answer, :user => @user, :content => "answer2 content"

    put :update, :id => @answer, :user_id => @user.id, :answer => @answer2
    response.should_not redirect_to login_path
    assigns(:question).should_not == @answer.question
    response.should_not redirect_to @answer.question
  end

  it 'get new' do
  	login_as FactoryGirl.create :user
  	@question = FactoryGirl.create :question

  	get :new, :question_id => @question
  	assigns(:question).should == @question
  	assigns(:answer).should be_a_new(Answer)
  end

  it 'ok, delete destroy' do
  	@user = FactoryGirl.create :user
  	login_as @user
  	@question = FactoryGirl.create :question
  	@answer = FactoryGirl.create :answer, :question => @question, :user => @user

  	delete :destroy, :id => @answer.id, :user_id => @user.id

  	response.should redirect_to @question
  end	

  it 'error, delete destroy, not login' do
  	@user = FactoryGirl.create :user
  	# login_as @user
  	@question = FactoryGirl.create :question
  	@answer = FactoryGirl.create :answer, :question => @question, :user => @user

  	delete :destroy, :id => @answer.id, :user_id => @user.id

  	response.should_not be_success
  end	

  it 'GET edit' do
    @user = FactoryGirl.create :user
    @answer = FactoryGirl.create :answer, :user => @user
    login_as @user

    get :edit, :id => @answer, :user_id => @user.id
    assigns(:answer).should == @answer
    assigns(:question).should == @answer.question
  end
  
=begin
  it 'put update' do
  	@user = FactoryGirl.create :user
  	login_as @user
  	@question = FactoryGirl.create :question
  	@answer = FactoryGirl.create :answer, :question => @question, :user => @user

    @answer2 = FactoryGirl.build :answer, :question => @question, :user => @user, :content => "Hello word, I missing you!"

  	put :update, :id => @answer.id, :answer => @answer2, :user_id => @user.id
    
  	response.should redirect_to @question
  	assigns(:answer).content.should == "Hello word, I missing you!"
  end

  it 'put update' do
  	@user = FactoryGirl.create :user
  	login_as @user
  	@question = FactoryGirl.create :question
  	@answer = FactoryGirl.create :answer, :question => @question, :user => @user

  	@answer.content = ""

  	put :update, :id => @answer.id, :answer => @answer, :user_id => @user.id

  	response.should redirect_to @question
  	assigns(:answer).content.should == ""
  end
=end

=begin
  it 'error, delete destroy, other user answer' do
  	@user = FactoryGirl.create :user
  	login_as @user
  	@question = FactoryGirl.create :question
  	@answer = FactoryGirl.create :answer, :question => @question # other user's answer

  	delete :destroy, :id => @answer.id, :user_id => @user.id

  	response.should_be be_success
  end	
=end


end