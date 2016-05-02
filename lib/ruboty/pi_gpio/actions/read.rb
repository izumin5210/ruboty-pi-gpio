module Ruboty
  module PiGpio
    module Actions
      class Read < Base
        include Mem

        def call
          message.reply(body)
        end

        private

        def body
          "#{message.body[prefix]}GPIO#{pin} is #{value}"
        end

        def value
          File.read("/sys/class/gpio/gpio#{pin}/value").chomp
        rescue => e
          log(e)
        end
        memoize :value
      end
    end
  end
end
