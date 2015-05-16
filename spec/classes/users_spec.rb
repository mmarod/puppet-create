require 'spec_helper'

describe 'create::users' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  it do 
    should contain_user('joe')
  end
end
