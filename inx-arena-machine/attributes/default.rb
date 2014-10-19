
default['rvm']['user_installs'] = [
  {
    'user'         => 'vagrant',
    'default_ruby' => '2.1',
    'rubies'       => ['2.1']
  }
]

default['inx-arena-packages'] = %w{
  vim git screen tmux bash-completion python-software-properties
  nodejs mongodb mongodb-clients
}
