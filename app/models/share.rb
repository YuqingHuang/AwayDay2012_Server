class Share < ActiveRecord::Base
  attr_accessible :device_id, :session_id, :share_image, :share_text, :timestamp, :username
end
