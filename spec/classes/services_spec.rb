require 'spec_helper'

describe 'create::services' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  it do 
    should contain_service('nagios')
  end
end
