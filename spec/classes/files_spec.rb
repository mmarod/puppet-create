require 'spec_helper'

describe 'create::files' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  it do 
    should contain_file('/tmp/myfile.txt')
  end
end
