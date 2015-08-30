module Ruboty
  module PiGpio
    module Actions
      class Read < Base
        def call
          robot.receive(message.original.merge(body: body))
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
      end
    end
  end
end
