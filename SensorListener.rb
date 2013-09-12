#! /usr/bin/ruby
require 'socket'
s = UDPSocket.new
s.bind(nil,1234)
while true
  message,sender = s.recvfrom(26)
  puts "received " + message
  message = message.split(",")
  sensor = message[0]
  device = message[1]
  strength = message[2]
  f = File.open(sensor+"_data.txt","w")
  f.write(device+","+strength+"\n")
  f.close
end
s.close
