module TimerCli
  class Timer
    def initialize(sec)
      @sec = sec
    end

    def run
      puts 'Start timer ...'

      sleep @sec

      notify
    end

    private

    def notify
      notifier = Notifier.new(@sec)
      notifier.notify
    end
  end
end
