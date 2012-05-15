require 'spec_helper'

describe Follow do
=begin
  before :each do
  	@user = FactoryGirl.create :user
  	@venue = FactoryGirl.create :venue, :creator => @user
  	@topic = FactoryGirl.create :topic, :venue => @venue

    @follow = FactoryGirl.create :follow, :followable => @user
  end

  it '#description' do
    @follow.description.should include @user.venue.name
    @follow.description.should include @user.title
  end
=end

end
