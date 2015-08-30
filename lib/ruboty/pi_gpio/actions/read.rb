module Ruboty
  module PiGpio
    module Actions
      class Read < Base
        def call
          message.reply(value)
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

