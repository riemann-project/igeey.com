require 'spec_helper'

describe ChartController do
  include AuthenticatedTestHelper

  it 'get show' do
  	response.should be_success
  end
end