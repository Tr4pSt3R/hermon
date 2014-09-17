module Webhookable
extend ActiveSupport::Concern
 
  # set response header type to XML
  def set_header
    response.headers["Content-Type"] = "text/xml"
  end
 
 # Render the TwiML object to raw XML
  def render_twiml(response)
    render text: response.text
  end
 
end