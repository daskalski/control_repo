class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure  => present,
    user    => 'root',
    type    => 'ssh-rsa',
    key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC/gfU7lZw4nN/cTqMYfJT3bpe0u8yC70a+bJyw/cyAotaEtdVWftbjsxGtw+VxHSpTHxi6RqtiVkoIcapNJGqdOP3dwQk15Qk71eO1+WRXxEjuIUGi4jfkXMRF0Qe1pqVPMPp8hrId2wXXXD+MAGGLnzZs4z0y1RYcFrlRca5UxZFTH+a0AGlAvMvvR6gARkzu7ckjmPGVVzAx0penv/Mb+QS2NNxZqGfXGmXeC2zry1osYP7FMetvawUssYQb3ZeOUmKRW7u52i3emHi6Dq/AW+LMfj383MsaT38NQ5mQdNftVA+vvHQcrO+ECwuw2apUI9nvTMt8kM06GoyYy2gN',
  }
}
