require 'spec_helper'

describe 'DeviseIntegration' do
  it 'getting json back from devise' do
    get '/users/sign_in', nil, {'HTTP_ACCEPT' => 'application/json'}

    puts response.body
    response.content_type.should == 'application/json'
  end
end