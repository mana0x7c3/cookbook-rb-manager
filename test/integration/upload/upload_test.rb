# frozen_string_literal: true

control 'cookbook-upload-local-chef-server' do
  impact 1.0
  title 'Upload rb-manager cookbook to a local Chef Server (chef-zero)'

  describe command("bash -lc 'set -euo pipefail; tmp=/tmp/chef-repo; rm -rf ${tmp}; mkdir -p ${tmp}/cookbooks; cp -a /opt/kitchen/cookbooks/. ${tmp}/cookbooks/; knife cookbook upload rb-manager -o ${tmp}/cookbooks -z'") do
    its('exit_status') { should eq 0 }
  end
end
