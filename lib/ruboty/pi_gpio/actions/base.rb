module Ruboty
  module PiGpio
    module Actions
      class Base < Ruboty::Actions::Base
        protected

        def pin
          message[:pin]
        end

        def export
          open('/sys/class/gpio/export', 'w') { |f| f.write(pin) }
        end

        def unexport
          open('/sys/class/gpio/unexport', 'w') { |f| f.write(pin) }
        end
      end
    end
  end
end
