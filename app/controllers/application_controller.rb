class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter { |controller|
    controller.current_user = User.find_by(name: 'Alice')
  }

  attr_accessor :current_user
end
