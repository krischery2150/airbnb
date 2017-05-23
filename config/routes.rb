Rails.application.routes.draw do
  resources :pages
  resources :rooms
  resources :photos
  root "pages#home"

  devise_for :users,
              :path => '',
              :path_names => {:sign_in => 'login', :sign_out => 'logout', :edit => 'profile'},
              :controllers => {:omniauth_callbacks => 'omniauth_callbacks'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
