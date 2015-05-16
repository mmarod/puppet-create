require 'spec_helper'

describe 'create::nagios_commands' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  it do 
    should contain_nagios_command('mycommand')
  end
end
