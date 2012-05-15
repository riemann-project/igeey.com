require 'spec_helper'

describe Badge do
  before :each do
    @badge = FactoryGirl.create :badge
    @user = FactoryGirl.create :user
  end

  it "badge not grant_to user" do
    @badge.grant_to?(@user).should be_false
  end

  it "badge grant_to user" do
    @grant = FactoryGirl.create :grant, :user => @user, :badge => @badge
    @badge.grant_to?(@user).should be_true
  end

end
