class ShareController < ApplicationController
  def create
    session_id = params[:session_id]
    timestamp = params[:timestamp]
    device_id = params[:device_id]
    username = params[:username]
    share_text = params[:share_text]
    share_image = params[:share_image]
    logger.info "creating share #{timestamp} for session_id #{session_id}"
    render json: {
      timestamp: timestamp,
      message: "Successful"
    }
  end
end