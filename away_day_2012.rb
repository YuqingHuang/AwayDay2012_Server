require 'sinatra'
require 'json'

get '/sessions_grouped_by_date' do
  content_type :json
  [
    {
      'Friday' =>  []
    },
    {
       'Saturday' => []
    }
  ].to_json
end