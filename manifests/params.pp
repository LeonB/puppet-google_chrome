# Class: google_chrome::params
#
# This class defines default parameters used by the main module class google_chrome
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to google_chrome class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class google_chrome::params {

	### Application related parameters

	$package_name = $::operatingsystem ? {
		default => 'google-chrome-stable'
	}

	$enabled = true

}
