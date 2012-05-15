# encoding: utf-8

require 'spec_helper'

describe Task do
  describe '#validate' do
    it 'description' do
      @task = FactoryGirl.create :task

      @task.description.should include '请大家踊跃报名！'
    end

=begin
    it 'tag_list' do
      @task1 = FactoryGirl.create :task
      @task2 = FactoryGirl.create :task
      @tagging1 = FactoryGirl.create(:tagging, :taggable_id => @task1.id, :taggable_type => 'Task')
      @tagging2 = FactoryGirl.create(:tagging, :taggable_id => @task2.id, :taggable_type => 'Task')

      Task.tag_list.should include @tagging1
      Task.tag_list.should == [@tagging1, @tagging2]
    end
=end

    it 'should can not save without user_id' do
      @task = FactoryGirl.build(:task)
      @task.user_id = nil
      @task.should_not be_valid
    end

    it 'should can not save without venue_id' do
      @task = FactoryGirl.build(:task)
      @task.venue_id = nil
      @task.should_not be_valid
    end

    it 'should can not save without title or title is empty' do
      @task = FactoryGirl.build(:task)
      @task.title = nil
      @task.should_not be_valid
    end

    it 'should can not save with do_at expired' do
      @task = FactoryGirl.build(:task)
      @task.do_at = 1.days.ago
      @task.should_not be_valid
    end

    it 'should save with do_at is today' do
      @task = FactoryGirl.create(:task)
      @task.do_at = Time.now 
      @task.should be_valid
    end

    it 'should save with user_id venue_id title' do
      @task = FactoryGirl.build(:task)
      @task.should be_valid
    end
  end

end
