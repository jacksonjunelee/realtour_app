class ApplicationController < ActionController::Base
  # include ActionController::MimeResponds
  include ActionController::RespondWith
  include ActionController::ImplicitRender
  # include ActionController::Serialization
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  # skip_before_action :verify_authenticity_token, if: :json_request?
  # skip_before_action :verify_authenticity_token

  def protect_against_forgery?
      false
  end
end
