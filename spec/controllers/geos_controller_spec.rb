require 'spec_helper'

describe GeosController do
  it 'GET index' do
  	@venue = FactoryGirl.create :venue
    get :index
    assigns(:venues).should include @venue
    # assigns(:venues).intro.should == @venue.intro
    assigns(:geo).should be_a_new(Geo)
  end

  it 'GET show' do
    @geo = FactoryGirl.create :geo
    get :show

    assigns(:venues).should_not be_nil
    assigns(:venues).count.should == 0
  end
end