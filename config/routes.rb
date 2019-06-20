Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories
  resources :tasks
  resources :sessions do
    resources :tasks, only: %i[index]
  end
  resources :profiles
  resources :time_entries
end
