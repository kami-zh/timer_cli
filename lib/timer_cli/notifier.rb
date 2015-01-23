require 'ruby-growl'

module TimerCli
  class Notifier
    def initialize(sec)
      @sec = sec
    end

    def notify
      growl = Growl.new('localhost', 'Timer')
      growl.add_notification('timer')
      growl.notify('timer', 'Timer', "#{@sec} second(s) have passed.")
    end
  end
end
