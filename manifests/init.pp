class google_chrome(
  $package_name = params_lookup( 'package_name' ),
  $enabled      = params_lookup( 'enabled' )
  ) inherits google_chrome::params {

  $ensure = $enabled ? {
    true => present,
    false => absent
  }

  include google_chrome::package, google_chrome::config
}
