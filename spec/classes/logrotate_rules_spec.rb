require 'spec_helper'

describe 'create::logrotate_rules' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  it do 
    should contain_logrotate_rule('logrotate::rule')
  end
end
