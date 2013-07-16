class SuperuserController < ApplicationController
  def authenticate
    username = params[:username]

    render status: :created, json: {
        result: username.eql?("TWer")
    }
  end
end