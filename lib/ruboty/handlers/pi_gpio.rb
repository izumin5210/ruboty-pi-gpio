module Ruboty
  module Handlers
    class PiGpio < Base
      on(/set gpio mode (?<pin>\d{,2}) (?<mode>in|out)/, name: :mode, description: 'Set GPIO mode')
      on(/set gpio value (?<pin>\d{,2}) (?<value>high|low)/, name: :write, description: 'Set GPIO value')
      on(/get gpio value (?<pin>\d{,2})/, name: :read, description: 'Get GPIO value')
      on(/unexport gpio (?<pin>\d{,2})/, name: :unexport, description: 'Unexport GPIO')

      def mode(message)
        Ruboty::PiGpio::Actions::Mode.new(message).call
      end

      def write(message)
        Ruboty::PiGpio::Actions::Write.new(message).call
      end

      def read(message)
        Ruboty::PiGpio::Actions::Read.new(message).call
      end

      def unexport(message)
        Ruboty::PiGpio::Actions::Unexport.new(message).call
      end
    end
  end
end
