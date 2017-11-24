class ApplicationController < ActionController::Base
  around_filter :global_request_logging
  include Response
  include ExceptionHandler
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  
  def global_request_logging 
    #http_request_header_keys = request.headers.keys.select{|header_name| header_name.match("^HTTP.*")}
    #http_request_headers = request.headers.select{|header_name, header_value| http_request_header_keys.index(header_name)}
    logger.warn "Received #{request.method.inspect} to #{request.url.inspect} from #{request.remote_ip.inspect}.  Processing with headers #{request.headers.inspect} and params #{params.inspect}"
    begin 
      yield 
    ensure 
      logger.warn "Responding with #{response.status.inspect} => #{response.body.inspect}"
    end 
  end 
end