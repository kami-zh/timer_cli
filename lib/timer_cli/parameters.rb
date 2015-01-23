module TimerCli
  class Parameters
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
