Rails.application.routes.draw do
  resources :pages
  resources :rooms
  resources :photos

  resources :users, only: [:show]

  root "pages#home"

  devise_for :users,
              :path => '',
              :path_names => {:sign_in => 'login', :sign_out => 'logout', :edit => 'profile'},
              :controllers => {:omniauth_callbacks => 'omniauth_callbacks'}

  resources :rooms do
    resources :reservations, only:[:create]
  end

  get '/preload' => "reservations#preload"
  get '/preview' => "reservations#preview"
  get '/your_trips' => "reservations#your_trips"
  get '/your_reservations' => "reservations#your_reservations"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
