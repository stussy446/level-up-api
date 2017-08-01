module Api
  class Api::ApiController < ApplicationController
    #skip_before_action :verify_authenticity_token, if: :json_request?
    #protect_from_forgery with: :exception
  end
end