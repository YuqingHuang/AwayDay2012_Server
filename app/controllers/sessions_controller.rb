class SessionsController < ApplicationController
  def grouped_by_date
    render json: [
      { agenda_date: "2012-08-10",
        agenda_sessions: [
          { session_description: "the desc",
            settion_title: "the title"},
          { session_description: "the desc",
            settion_title: "the title"}
        ]
      }
    ]
  end
end