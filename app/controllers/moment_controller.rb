class MomentController < ApplicationController
  def create
    timestamp = params[:timestamp]
    device_id = params[:device_id]
    render json: {
      result: 'done',
      timestamp: timestamp
    }
  end
end