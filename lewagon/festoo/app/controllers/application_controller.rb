class ApplicationController < ActionController::Base
  # Disable to help during the development period. Remember to able this feature for production
  before_action :authenticate_user!
end
