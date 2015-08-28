module Ruboty
  module PiGpio
    module Actions
      class Write < Base
        HIGH = 1
        LOW = 0

        def call
          set_value
          message.reply("Set GPIO#{pin} to #{value} successfully")
        rescue
          message.reply("Failed to set GPIO#{pin} to #{value}")
        end

        private

        def set_value
          open("/sys/class/gpio/gpio#{pin}/value", 'w') { |f| f.write(value) }
        end

        def value
          case message[:value]
          when 'low'  then 0
          when 'high' then 1
          end
        end
      end
    end
  end
end
