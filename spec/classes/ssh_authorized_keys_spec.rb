require 'spec_helper'

describe 'create::ssh_authorized_keys' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  it do 
    should contain_ssh_authorized_key('mykey')
  end
end
