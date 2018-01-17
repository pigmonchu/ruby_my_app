Rails.application.routes.draw do
  root to: 'katas#index' #va a vistas -> katas -> index

  get '/kata/:id' => 'katas#show', as: :kata #el le añade _path
end
