Vagrant.require_version ">= 1.8.0"

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.provider ENV['VAGRANT_DEFAULT_PROVIDER'] do |v|
      v.name = ENV['VM_NAME']
  end

  config.vm.synced_folder ENV['REPORTS_PATH'], "/srv", create: true

  config.vm.provision "shell", inline: <<-SHELL
          apt-get update
          apt-get -y install git
          apt-get -y install python-pip
          apt-get -y install python-virtualenv
          git clone -b #{ENV['GIT_BRANCH']} #{ENV['GIT_REPO']}
          cd test
          chmod +x run_test.sh
          ./run_test.sh
          cp report.xml /srv
      SHELL
end
