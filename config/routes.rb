Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :avatars
    resources :achievements

    resources :users do
      resources :avatars
    end
    
  end
  resources :users
end
