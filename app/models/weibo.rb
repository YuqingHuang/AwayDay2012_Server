require "weibo_2"

module  Weibo
  include ApplicationHelper
  def sentToWeibo(content)
    p "sending to weibo..."
    WeiboOAuth2::Config.api_key = getProperty("api_key")
    WeiboOAuth2::Config.api_secret = getProperty("api_secret")
    WeiboOAuth2::Config.redirect_uri = getProperty("redirect_uri")
    client = WeiboOAuth2::Client.new
    client.get_token_from_hash({:access_token => getProperty("access_token"), :expires_at => getProperty("expires_at").to_i})
    statuses = client.statuses
    client.statuses.update("#awayday#"+content)

    p "sending to weibo finished"
  end

  def getProperty(key)
    token = ""
    tokenFile = File.new(TokenFileName)
    tokenFile.each_line do |line|
      if line.include? key then
        token = line.split("=")[1].strip
      end
    end
    return token
  end

end
