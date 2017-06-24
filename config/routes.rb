Rails.application.routes.draw do
  devise_for :users, :path=>'',
                              :path_name=>{:sign_in=>'login', :sign_out=>'logout', :edit=>'profile'},
                              :controllers=>{:registrations=>'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "pages#home"

  resources :users, only: [:show]

  resources :rooms do
    resources :reservations, only: [:create]
  end

  resources :photos

end
