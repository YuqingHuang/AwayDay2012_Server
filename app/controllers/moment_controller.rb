class MomentController < ApplicationController
  def create
    timestamp = params[:timestamp]
    device_id = params[:device_id]
    logger.info "creating moment #{timestamp} for device_id #{device_id}"
    moment = Moment.new params[:moment]
    if moment.save
      render status: :created, json: {
        result: 'done',
        timestamp: timestamp
      }
    else
      render status: :unprocessable_entity, json: {
        result: 'done',
        timestamp: timestamp,
        errors: thing.errors
      }
    end
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