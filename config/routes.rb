AwayDay2012Rails::Application.routes.draw do
  get 'sessions_grouped_by_date' => 'sessions#grouped_by_date'

  post 'moment' => 'moment#create'
  delete 'moment' => 'moment#destroy'
  post 'share' => 'share#create'
  get 'refresh_token' => 'token#refresh'
  get '/callback' => 'token#callback'
end