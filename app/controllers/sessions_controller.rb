class SessionsController < ApplicationController
  def grouped_by_date
    render json: [
      { agenda_date: "2012-09-15",
        agenda_sessions: [
          { session_description: "the desc",
            settion_title: "the title",
            session_speaker:"test speaker",
            session_start:"2012-09-15 09:00 +800",
            session_end:"2012-09-15 10:00 +800",
            session_location:"test location",
            session_id:"201209150900"},
          {   session_description: "the desc",
              settion_title: "the title",
              session_speaker:"test speaker",
              session_start:"2012-09-15 10:00 +800",
              session_end:"2012-09-15 12:00 +800",
              session_location:"test location",
              session_id:"201209151000"}
        ]
      },
      { agenda_date: "2012-09-16",
        agenda_sessions: [
          { session_description: "the desc",
            settion_title: "the title",
            session_speaker:"test speaker",
            session_start:"2012-09-16 09:00 +800",
            session_end:"2012-09-16 10:00 +800",
            session_location:"test location",
            session_id:"201209160900"},
          {   session_description: "the desc",
              settion_title: "the title",
              session_speaker:"test speaker",
              session_start:"2012-09-16 10:00 +800",
              session_end:"2012-09-16 12:00 +800",
              session_location:"test location",
              session_id:"201209161000"}
        ]
      }
    ]
  end
end