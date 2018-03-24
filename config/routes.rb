Rails.application.routes.draw do

  devise_scope :user do

    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
    get 'sign_in', to: 'devise/sessions#new'
    post 'sign_in', to: 'devise/sessions#create'
    delete 'sign_out', to: 'devise/sessions#destroy'

  end

  devise_for :users
  resources :users
  root to: 'visitors#index'
end
