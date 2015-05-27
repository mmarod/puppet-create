require 'spec_helper'

describe 'create::pams' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  it do 
    should contain_pam('somepam')
  end
end
