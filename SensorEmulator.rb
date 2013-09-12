#! /usr/bin/ruby
require 'socket'
s = UDPSocket.new
while true do
  message = "ANT1,00:24:36:EB:E3:75,-55"
  puts "sending " +  message
  s.send(message,0,'localhost',1234)
  sleep 5

  message = "ANT2,00:24:36:EB:E3:75,-55"
  puts "sending " +  message
  s.send(message,0,'localhost',1234)
  sleep 5

  message = "ANT3,00:24:36:EB:E3:75,-55"
  puts "sending " +  message
  s.send(message,0,'localhost',1234)
  sleep 5

  message = "ANT4,00:24:36:EB:E3:75,-55"
  puts "sending " +  message
  s.send(message,0,'localhost',1234)
  sleep 5
end
