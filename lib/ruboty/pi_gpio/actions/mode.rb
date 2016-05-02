module Ruboty
  module PiGpio
    module Actions
      class Mode < Base
        def call
          export
          set_mode
          message.reply("Mode GPIO#{pin} #{mode} successfully")
        end

        private

        def set_mode
          open("/sys/class/gpio/gpio#{pin}/direction", 'w') { |f| f.write(mode) }
        rescue => e
          log(e)
        end

        def mode
          message[:mode]
        end
      end
    end
  end
end
