require 'spec_helper'

describe 'create::hosts' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  it do 
    should contain_host('myhost')
  end
end
