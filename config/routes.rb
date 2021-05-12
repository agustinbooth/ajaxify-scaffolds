Rails.application.routes.draw do
  root "movies#index"

  resources :characters
  resources :actors
  resources :directors
  resources :movies
  get "/movies/:id/:element/edit", to: "movies#edit_element", as: :edit_movie_element
  # get "/movies/:id/year/edit", to: "movies#edit_year", as: :edit_movie_year
  # get "/movies/:id/director/edit", to: "movies#edit_director", as: :edit_movie_director
  # get "/movies/:id/description/edit", to: "movies#edit_description", as: :edit_movie_description
  # get "/movies/:id/duration/edit", to: "movies#edit_duration", as: :edit_movie_duration
end
