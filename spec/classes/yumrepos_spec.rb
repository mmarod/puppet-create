require 'spec_helper'

describe 'create::yumrepos' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  it do 
    should contain_yumrepo('myrepo')
  end
end
