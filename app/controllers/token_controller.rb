class TokenController < ApplicationController
  include ApplicationHelper
  def update
    p "in"+"*"*10
    access_token = params[:access_token]
    p access_token
    timestamp=  Time.now.getutc
    updateTokenInFile(access_token)
    render status: :created, json: {
        timestamp: Time.now.getutc,
        message: "Update token Successful"
      }
  end

  def updateTokenInFile(token)
    tokenFile = File.new(TokenFileName,"w+")
    tokenFile.puts "acces_token="+token
    tokenFile.close
    p 'finished'+"*"*10
  end
end
