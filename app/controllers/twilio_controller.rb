require 'twilio-ruby'
 
class TwilioController < ApplicationController
  include Webhookable
 
  after_filter :set_header
  
  # if your app wants to provide a POST endpoint to external 3rd parties (like Twilio) you have to disable CSRF detection for these endpoints
  skip_before_action :verify_authenticity_token
 

 # The purpose of the voice action is to tell Twilio what to do when someone calls your Twilio number. 
  def voice
    response = Twilio::TwiML::Response.new do |r|
      r.Say 'Hey there. Congrats on integrating Twilio into your Rails 4 app.', :voice => 'alice'
         r.Play 'http://linode.rabasa.com/cantina.mp3'
    end
 
    render_twiml response
  end
end