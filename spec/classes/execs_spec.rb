require 'spec_helper'

describe 'create::execs' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  it do 
    should contain_exec('whoami')
  end
end
