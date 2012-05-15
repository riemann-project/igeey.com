require 'spec_helper'

describe TasksController do
  include AuthenticatedTestHelper

  # render_views  

  def mock_task(stubs={})
    @mock_task ||= mock_model(Task, stubs)
  end

  it "shoud response collection REST path" do
    get :index
    response.should be_success
  end
  
  it 'get progress' do
    @user = FactoryGirl.create :user
    @venue = FactoryGirl.create :venue, :creator => @user
    @task = FactoryGirl.create :task
    @record = FactoryGirl.create :record, :task => @task, :venue => @venue

    get :progress

    response.should be_success
    assigns(:task).should == @task
    assigns(:records).should include @record
    assigns(:records).should == [@record]
  end
=begin
  it "shoud response member REST path" do
    Task.stub(:find).with("1").and_return(mock_task)
    task = mock_model(Task)
    get :show, :id => "1"
    response.should be_success
  end
=end

  it 'new method' do
    @user = FactoryGirl.create :user
    login_as(@user)
    session[:user_id].should_not be_nil

    #@task = FactoryGirl.build(:task, :user => @user)
    get :new#, :task => @task

    assigns(:task).should be_a_new(Task)
    #assigns(:task).should == @task

  end

=begin
  it 'new method' do
    @user = FactoryGirl.create :user
    login_as(@user)
    session[:user_id].should_not be_nil

    @task = FactoryGirl.build(:task, :user => @user)
    post :create, :task => @task

    # assigns(:task).should == @task
    response.should redirect_to root_path
    # assigns(:task).should be_a_new(Task)

  end
=end

  def valid_attributes
    FactoryGirl.attributes_for(:task)
  end

  before :each do
    login_as(FactoryGirl.create(:user, :is_admin => true))
    @task = FactoryGirl.create(:task)
  end

  describe "GET index" do
=begin
    it "assigns all task as @tasks" do
      get :index
      assigns(:tasks).should eq([@task])
    end
  end
=end

    describe "GET show" do
      it "assigns the requested task as @task" do
        get :show, :id => @task.id
        assigns(:task).should eq(@task)
      end
    end

    describe "GET new" do
      it "assigns a new task as @task" do
        get :new
        assigns(:task).should be_a_new(Task)
      end
    end

    describe "GET edit" do
=begin
      it "assigns the requested task as @task" do
        get :edit, :id => @task.id
        assigns(:task).should eq(@task)
      end
=end
    end

    describe "POST create" do
      describe "with valid params" do
        it "creates a new Task" do
          expect {
            post :create, :task => valid_attributes
          }.to change(Task, :count).by(1)
        end

        it "assigns a newly created task as @task" do
          post :create, :task => valid_attributes
          assigns(:task).should be_a(Task)
          assigns(:task).should be_persisted
        end

=begin
        it "redirects to the task index" do
          post :create, :task => valid_attributes
          response.should redirect_to(tasks_path)
        end
=end
      end

      describe "with invalid params" do
        it "assigns a newly created but unsaved task as @task" do
          # Trigger the behavior that occurs when invalid params are submitted
          Task.any_instance.stub(:save).and_return(false)
          post :create, :task => {}
          assigns(:task).should be_a_new(Task)
        end

=begin
        it "re-renders the 'new' template" do
          # Trigger the behavior that occurs when invalid params are submitted
          Task.any_instance.stub(:save).and_return(false)
          post :create, :task => {}
          response.should render_template("new")
        end
=end
      end
    end

    describe "PUT update" do
      describe "with valid params" do
=begin
        it "updates the requested task" do
          # Assuming there are no other accessories in the database, this
          # specifies that the Accessory created on the previous line
          # receives the :update_attributes message with whatever params are
          # submitted in the request.
          Accessory.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
          put :update, :id => @task.id, :task => {'these' => 'params'}
        end
=end

        it "assigns the requested task as @task" do
          put :update, :id => @task.id, :task => valid_attributes
          assigns(:task).should eq(@task)
        end

=begin
        it "redirects to the task index" do
          put :update, :id => @task.id, :task => valid_attributes
          response.should redirect_to(tasks_path)
        end
=end
      end

      describe "with invalid params" do
        it "assigns the task as @task" do
          # Trigger the behavior that occurs when invalid params are submitted
          Task.any_instance.stub(:save).and_return(false)
          put :update, :id => @task.id, :task => {}
          assigns(:task).should eq(@task)
        end

=begin
       it "re-renders the 'edit' template" do
          # Trigger the behavior that occurs when invalid params are submitted
          Task.any_instance.stub(:save).and_return(false)
          put :update, :id => @task.id, :task => {}
          response.should render_template("edit")
        end
=end
      end
    end

    describe "DELETE destroy" do
=begin
      it "destroys the requested task" do
        task = Task.create! valid_attributes
        expect {
          delete :destroy, :id => task.id
        }.to change(Task, :count).by(-1)
      end
=end

=begin
      it "redirects to the tasks list" do
        task = Task.create! valid_attributes
        delete :destroy, :id => task.id
        response.should redirect_to(tasks_url)
      end
=end
    end

  end
end
