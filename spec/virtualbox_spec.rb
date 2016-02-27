require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"

describe package('virtualbox'), :if => os[:family] == 'darwin' do
  it { should be_installed.by('homebrew_cask') }
end

describe package('virtualbox-5.0'), :if => os[:family] == 'debian' do
  it { should be_installed.by('apt') }
end

describe command('which VBoxManage') do
  its(:exit_status) { should eq 0 }
end
