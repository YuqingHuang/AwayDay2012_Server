class SessionsController < ApplicationController
  def grouped_by_date
    render json: Session.grouped_by_date
  end
end