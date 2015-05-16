require 'spec_helper'

describe 'create::crons' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  it do 
    should contain_cron('logrotate')
  end
end
