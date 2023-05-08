Rails.application.routes.draw do
  get '/charter_schools', to: 'charter_schools#index'
end
