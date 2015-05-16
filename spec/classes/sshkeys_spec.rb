require 'spec_helper'

describe 'create::sshkeys' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  it do 
    should contain_sshkey('mykey')
  end
end
