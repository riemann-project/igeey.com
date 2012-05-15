require 'spec_helper'

describe Feedback do
  before :each do
    @feedback = FactoryGirl.create :feedback
  end

  it 'send_new_feedback' do
    Mailer.send_new_feedback(@feedback).deliver.should be_true
  end

end
