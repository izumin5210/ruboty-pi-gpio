module Ruboty
  module PiGpio
    module Actions
      class Unexport < Base
        def call
          unexport
          message.reply("Unexport GPIO#{pin} successfully")
        rescue
          message.reply("Failed to unexport GPIO#{pin}")
        end
      end
    end
  end
end

