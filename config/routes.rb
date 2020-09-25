Rails.application.routes.draw do
  root to: 'people#index'
  resources :people, { only: [:index, :show], param: :identifier }
end
