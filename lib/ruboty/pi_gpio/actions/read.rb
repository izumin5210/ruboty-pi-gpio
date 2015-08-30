module Ruboty
  module PiGpio
    module Actions
      class Read < Base
        def call
          message.reply("GPIO#{pin} is #{value}")
        rescue
          message.reply("Failed to get GPIO#{pin} value")
        end

        private

        def value
          File.read("/sys/class/gpio/gpio#{pin}/value")
        rescue => e
          log(e)
        end
      end
    end
  end
end

