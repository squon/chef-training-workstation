require 'spec_helper'

describe 'workstation::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  # it 'does something' do
    # skip 'Replace this with meaningful tests'
  # end
   describe package ('emacs') do
      it {should be_installed}
   end
   describe package ('tree') do
      it {should be_installed}
   end
   describe package ('git') do
      it {should be_installed}
   end
   describe file ("/etc/motd") do
      its (:content) {should match /Property of ...\n/}
      # it {should contain /Property of/}
   end
end
