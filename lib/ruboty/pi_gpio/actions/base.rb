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
        rescue => e
          log(e)
        end

        def unexport
          open('/sys/class/gpio/unexport', 'w') { |f| f.write(pin) }
        rescue => e
          log(e)
        end

        def log(e = nil)
          Ruboty.logger.info(message.body)
          unless e.nil?
            Ruboty.logger.error(e.message)
            Ruboty.logger.error(e.backtrace.join("\n") + "\n")
          end
        end
      end
    end
  end
end
