require "ruboty/pi_gpio/version"
require "ruboty/handlers/pi_gpio"
require "ruboty/pi_gpio/actions/base"
require "ruboty/pi_gpio/actions/mode"
require "ruboty/pi_gpio/actions/write"
require "ruboty/pi_gpio/actions/read"
require "ruboty/pi_gpio/actions/unexport"

END {
  Dir.glob('/sys/class/gpio/gpio*').each do |gpio|
    open('/sys/classs/gpio/unexport', 'w') { |f| f.write(gpio) }
  end
}
