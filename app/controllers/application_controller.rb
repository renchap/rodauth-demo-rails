class ApplicationController < ActionController::Base

  rescue_from ActionController::InvalidAuthenticityToken do
    logger.error("invalid CSRF!")

    render text: "Invalid CSRF", code: 422
  end

  private

  def current_account
    rodauth.rails_account
  end
  helper_method :current_account

  def authenticate
    rodauth.require_account
  end
end
