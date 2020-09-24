Rails.application.routes.draw do
  # get "/people", to: "people#index"
  # get "/people/:identifier", to: "people#show"
  resources :people, { only: [:index, :show], param: :identifier }
end
