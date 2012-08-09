class SessionsController < ApplicationController
  def grouped_by_date
    render text: [
      {
        'Friday' =>  []
      },
      {
         'Saturday' => []
      }
    ].to_json
  end
end