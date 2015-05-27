require 'spec_helper'

describe 'create::packages' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  it do 
    should contain_package('git')
  end
end
