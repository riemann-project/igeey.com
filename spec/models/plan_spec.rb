# encoding: utf-8
require 'spec_helper'

describe Plan do
  before do
    @user = FactoryGirl.create(:user)
    @user_1 = FactoryGirl.create(:user)

    @task = FactoryGirl.create(:task)
    @plan = FactoryGirl.create(:plan, :task => @task)
  end

  it 'status' do
    @plan.status.should == @task.status
  end

=begin
  it 'description' do
    plan = FactoryGirl.create(:plan)
    description = "要参加#{plan.task.venue.name}的行动：#{plan.task.title}"
    plan.description.should =~ description
  end
=end

  describe 'validation' do
    it 'should be created by task_id' do
      @plan = Plan.new(:user_id=>@user.id, :content=>'plan content')
      @plan.should_not be_valid

      @plan = Plan.new(:task_id=>@task.id, :user_id=>@user.id, :content=>'plan content')
      @plan.should be_valid
    end

    it 'should be created by user_id' do
      @plan = Plan.new(:task_id=>@task.id, :content=>'plan content')
      @plan.should_not be_valid

      @plan = Plan.new(:task_id=>@task.id, :user_id=>@user.id, :content=>'plan content')
      @plan.should be_valid
    end

    it 'should be created by content' do
      @plan = Plan.new(:task_id=>@task.id, :user_id=>@user.id)
      @plan.should_not be_valid

      @plan = Plan.new(:task_id=>@task.id, :user_id=>@user.id, :content=>'plan content')
      @plan.should be_valid
    end

    it 'should only be one plan to the same user with a task' do
      @plan = Plan.new(:task_id=>@task.id, :user_id=>@user.id, :content=>'plan content')
      @plan.should be_valid
      @plan.save

      @plan_1 = Plan.new(:task_id=>@task.id, :user_id=>@user.id, :content=>'plan content 2')
      @plan_1.should_not be_valid
    end

    it 'should be plan multiple users with a task' do
      @plan = Plan.new(:user_id=>@user.id, :task_id=>@task.id, :content=>'plan content')
      @plan.should be_valid
      @plan.save

      @plan_1 = Plan.new(:user_id=>@user_1.id, :task_id=>@task.id, :content=>'plan content 2')
      @plan.should be_valid
    end
  end
end
