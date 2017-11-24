# app/controllers/concerns/exception_handler.rb
module ExceptionHandler
  # provides the more graceful `included` method
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      #json_response({ message: e.message }, :not_found) #404
      render plain: "RG_SMS_OS", status: :internal_server_error
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      render plain: "RG_SMS_OS", status: :internal_server_error
    end
    
  end
end