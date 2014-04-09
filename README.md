puppet-java
===========

A puppet module to manage Java OpenJDK instalation.

## Sample Usage
Install OpenJDK:
```puppet
node default {
	class {'openjdk':}
}
```
or
```puppet
node default {
	class {'openjdk':
		ensure => present
	}
}
```
or
```puppet
node default {
	include openjdk
}
```

Removing OpenJDK:
```puppet
node default {
	class {'openjdk':
		ensure => absent
	}
}
```

Contact
-------

Principal developer:
	[Leonardo Thibes](http://leonardothibes.com) => [eu@leonardothibes.com](mailto:eu@leonardothibes.com)

Support
-------

Please log tickets and issues at our [Projects site](https://github.com/leonardothibes/puppet-openjdk/issues)
