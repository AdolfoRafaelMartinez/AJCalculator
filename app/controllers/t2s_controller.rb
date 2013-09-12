class T2sController < ApplicationController
  require 'socket'
  def index
    s = UDPSocket.new
    s.bind(nil,1234)
    5.times do
      text, sender = s.recvfrom(16)
      puts text
    end
  end
end
