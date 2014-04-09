class openjdk inherits openjdk::params
{
    if $osfamily != 'Debian' {
        fail("Unsupported platform: ${osfamily}/${operatingsystem}")
    }
    package {'openjdk::package':
        ensure => present,
        name   => $openjdk::params::package,
    }
    file {'openjdk::link':
        ensure  => link,
        path    => $openjdk::params::java_path,
        target  => $openjdk::params::java_target,
        require => Package['openjdk::package'],
    }
}
