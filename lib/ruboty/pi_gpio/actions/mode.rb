module Ruboty
  module PiGpio
    module Actions
      class Mode < Base
        def call
          export
          set_mode
          message.reply("Set GPIO#{pin} to #{mode} successfully")
        rescue
          message.reply("Failed to set GPIO#{pin} to #{mode}")
        end

        private

        def set_mode
          open("/sys/class/gpio/gpio#{pin}/direction", 'w') { |f| f.write(mode) }
        end

        def mode
          message[:mode]
        end
      end
    end
  end
end
