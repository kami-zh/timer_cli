require 'timer_cli/version'

module TimerCli
  autoload :Timer,      'timer_cli/timer'
  autoload :Notifier,   'timer_cli/notifier'
  autoload :Parameters, 'timer_cli/parameters'
  autoload :Command,    'timer_cli/command'
end
