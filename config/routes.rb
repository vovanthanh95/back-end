Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:index, :new, :create, :edit, :update, :destroy]
  root 'books#index'
end
