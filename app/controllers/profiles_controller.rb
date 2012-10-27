class ProfilesController < ApplicationController
  load_and_authorize_resource

  respond_to :json

  def index
    respond_with @profiles
  end
end
