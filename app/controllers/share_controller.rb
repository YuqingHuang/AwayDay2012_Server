class ShareController <  ApplicationController
  include ApplicationHelper
  include Weibo
  def create
    session_id = params[:session_id]
    timestamp = params[:timestamp]
    device_id = params[:device_id]
    username = params[:username]
    share_text = params[:share_text]
    share_image = params[:share_image]
    logger.info "creating share #{timestamp} for session_id #{session_id}"

    sentToWeibo(username+" "+share_text)
    share = Share.new params[:share]
    if share.save
      render status: :created, json: {
        timestamp: timestamp,
        message: "Successful"
      }
    else
      render status: :unprocessable_entity, json: {
        timestamp: timestamp,
        message: share.errors
      }
    end
  end
end