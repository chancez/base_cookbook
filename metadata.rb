name             'base'
maintainer       'Chance Zibolski'
maintainer_email 'chance.zibolski@gmail.com'
description      'Installs/Configures vps'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'sudo'
depends 'users'
depends 'openssh'
depends 'build-essential'
depends 'docker'
depends 'rvm'
