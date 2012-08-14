class MomentController < ApplicationController
  def create
    timestamp = params[:timestamp]
    device_id = params[:device_id]
    logger.info "creating moment #{timestamp} for device_id #{device_id}"
    render json: {
      result: 'done',
      timestamp: timestamp
    }
  end

  def destroy
    timestamp = params[:timestamp]
    device_id = params[:device_id]
    logger.info "destroying moment #{timestamp} for device_id #{device_id}"
    render json: {
      result: 'done',
      timestamp: timestamp
    }
  end
end