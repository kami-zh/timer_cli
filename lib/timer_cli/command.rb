module TimerCli
  class Command
    class << self
      def start
        params = Parameters.new(ARGV)

        timer = Timer.new(params.sec)
        timer.run
      end
    end
  end
end
