Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, except: [:new]
  resources :users, only: [:index, :show, :edit, :update]

  get "/homes/about" => "homes#about", as: "about"
end
