Rails.application.routes.draw do
  get 'wedding_dresses/index'

  get 'employees/index'

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/login'
  get 'static_pages/contact'
  get 'static_pages/register'
  get 'static_pages/logout'


  resources :employees
  resources :wedding_dresses
  root 'static_pages#home'
 end
