package{"curl":
	ensure=>"present"
}
package{"libxslt-dev":
	ensure=>"present"
}
package{"libxml2-dev":
	ensure=>"present"
}
@exec { '/usr/bin/sudo apt-get update':
   tag => update
}
Exec <| tag == update |> -> Package <| |>

exec { 'install-rvm':
  command => "/bin/su -l --command='/usr/bin/curl -L https://get.rvm.io | bash -s stable' vagrant",
  creates => "/home/vagrant/.rvm",
  require => Package['curl']
}

exec {'install-ruby':
  command =>"/bin/su -l --command='rvm install $(cat /vagrant/.ruby-version)' vagrant",
  require => Exec['install-rvm']
}

exec {'bundle-install':
  command =>"/bin/su -l --command='cd /vagrant;bundle install' vagrant",
  require => Exec['install-ruby']
}