Rails.application.routes.draw do
  get '/' => 'home#top'
  get 'home/login_form' => 'home#login_form'
  post 'home/login'
  post 'home/logout' => 'home#logout', as: 'home_logout'

  resources :histories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
