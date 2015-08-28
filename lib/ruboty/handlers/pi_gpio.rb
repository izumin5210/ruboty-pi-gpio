module Ruboty
  module Handlers
    class PiGpio < Base
      on(/set gpio mode (?<pin>\d{,2}) (?<mode>in|out)/, name: :mode, description: 'Set GPIO mode')
      on(/set gpio value (?<pin>\d{,2}) (?<value>high|low)/, name: :write, description: 'Set GPIO value')
      on(/get gpio value (?<pin>\d{,2})/, name: :read, description: 'Get GPIO value')
      on(/unexport gpio (?<pin>\d{,2})/, name: :unexport, description: 'Unexport GPIO')

      def mode
        # TODO: not yet implemented.
      end

      def write
        # TODO: not yet implemented.
      end

      def read
        # TODO: not yet implemented.
      end

      def unexport
        # TODO: not yet implemented.
      end
    end
  end
end
