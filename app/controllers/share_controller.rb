class ShareController < ApplicationController
  def create
    session_id = params[:session_id]
    timestamp = params[:timestamp]
    logger.info "creating share #{timestamp} for session_id #{session_id}"
    render json: {
      timestamp: timestamp,
      seesionid: session_id
    }
  end
end