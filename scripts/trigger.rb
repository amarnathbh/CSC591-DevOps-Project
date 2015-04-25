#!/usr/bin/env ruby
#require 'httparty'
require 'twilio-ruby'
require "net/http"
puts "Staring..."
# put your own credentials here
account_sid = '1234'
auth_token = '1234'

load_blanacer_ip = "http://45.55.167.130/"
# set up a client to talk to the Twilio REST API
3.times do
  url = URI.parse(load_blanacer_ip)
  req = Net::HTTP.new(url.host, url.port)
  begin
    response = req.request_head(url.path)
    puts response.code
  rescue
    down = true
  end

  if  !down.nil? || response.code == "404"
    if File.exists?('./called')
      puts "Site is still down but called made"
    else
      @client = Twilio::REST::Client.new account_sid, auth_token

      @client.account.calls.create({
                                     :to => 'tonumber',
                                     :from => 'selfnumber',
                                     :url => 'https://demo.twilio.com/welcome/voice/',
                                     :application_sid => 'applicationsid',
                                     :method => 'GET',
                                     :fallback_method => 'GET',
                                     :status_callback_method => 'GET',
                                     :record => 'false'
      })
      puts "Code Red called made"
      File.open('./called', 'w') do |file|
        file.write('1')
      end
    end
  elsif response.code == "200" && File.exists?('./called')
    puts "Site is up"
    File.delete('./called')
  else
    puts "Site is Live!!!"
  end
  sleep(15)
  puts "next round.."
end
