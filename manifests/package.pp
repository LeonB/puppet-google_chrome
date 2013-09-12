class google_chrome::package {

	package  { $google_chrome::package_name:
		ensure => $google_chrome::ensure,
		require => Apt::Source['google-chrome'],
	}

        # The Google Chrome APT source
        apt::source { 'google-chrome':
                ensure      => present,
                location    => 'http://dl.google.com/linux/chrome/deb/',
                release     => 'stable',
                repos       => 'main',
                key         => '7FAC5991',
                include_src => false
        }
}
