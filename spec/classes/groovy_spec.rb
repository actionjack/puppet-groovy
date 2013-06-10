require 'spec_helper'

describe 'groovy', :type => :class do
  context 'Install groovy' do
    let :facts do
      {
          :osfamily => 'RedHat'
      }
    end
    it { should contain_package('groovy').with_ensure('latest') }
  end

  context 'Install groovy version 2.1.4' do
    let :facts do
      {
          :osfamily => 'RedHat'
      }
    end
    let :params do
      {
          :version => '2.1.4'
      }
    end
    it { should contain_package('groovy').with_ensure('2.1.4') }
  end

end