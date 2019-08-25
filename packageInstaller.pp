class packageInstaller {
    $packages = ['git', 'docker-ce', 'docker-ce-cli', 'docker-compose', 'silversearcher-ag']

    apt::source { 'docker':
      location => 'https://download.docker.com/linux/ubuntu',
      ensure   => present,
      release  => "$lsbdistcodename",
      repos    => 'stable',
      key      => {
        server => "https://download.docker.com",
        id     => "9DC858229FC7DD38854AE2D88D81803C0EBFCD88",
      }
    }

    $packages.each |String $pack| {
        package { $pack:
            ensure => present
        }
    }
}

include packageInstaller
