require "ruboty/pi_gpio/version"
require "ruboty/handlers/pi_gpio"
require "ruboty/pi_gpio/actions/base"
require "ruboty/pi_gpio/actions/mode"
require "ruboty/pi_gpio/actions/write"
require "ruboty/pi_gpio/actions/read"
require "ruboty/pi_gpio/actions/unexport"

END {
  Dir.glob('/sys/class/gpio/gpio*').each do |gpio|
    if /gpio(?<pin>\d{,2})$/ =~ gpio
      open('/sys/class/gpio/unexport', 'w') { |f| f.write(pin) }
    end
  end
}
