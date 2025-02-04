ENV['RAILS_ENV'] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  fixtures :all

  private

  def db
    RodauthBase.allocate.db
  end
end
