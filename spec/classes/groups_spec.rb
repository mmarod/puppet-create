require 'spec_helper'

describe 'create::groups' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  it do 
    should contain_group('mygroup')
  end
end
