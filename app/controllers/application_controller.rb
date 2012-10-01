class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  
  before_filter :authenticate
  
  protected
    def authenticate
      authenticate_or_request_with_http_basic do |username, password|
        username == "admin" && password == "foobar2012"
      end
    end
end
