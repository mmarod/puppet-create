require 'spec_helper'

describe 'create::nagios_services' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  it do 
    should contain_nagios_service('myservice')
  end
end
