module TimerCLI
  class Timer
    def initialize(sec)
      @sec = sec
    end

    def run
      sleep @sec

      notify
    end

    private

    def notify
      notifier = ::TimerCLI::Notifier.new(@sec)
      notifier.notify
    end
  end

  require 'ruby-growl'

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

  class ParameterParser
    attr_reader :sec

    def initialize(params)
      @sec = parse(params[0])
    end

    private

    def parse(time)
      if /(?<sec>\d+)(?<variable>[s|m]{1})/ =~ time
        calculate(sec.to_i, variable)
      else
        raise ArgumentError
      end
    end

    def calculate(sec, variable)
      sec * case variable
        when 's'
          1
        when 'm'
          60
        end
    end
  end
end

params = TimerCLI::ParameterParser.new(ARGV)

timer = TimerCLI::Timer.new(params.sec)
timer.run
