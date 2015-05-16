require 'spec_helper'

describe 'create::nagios_hosts' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  it do 
    should contain_nagios_host('myhost')
  end
end
