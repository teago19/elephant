class ApplicationController < ActionController::API
  include ActionController::RequestForgeryProtection
    
  protect_from_forgery unless: -> { request.format.json? }
  render formats: :json
  
  private

  def render_bad_request_json
    origin = request.path
    render json: { errors: { detail: "bad request", source: {ponter: origin}}}, status: :bad_request, adapter: :json_api
    return false
  end

end
