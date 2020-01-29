Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: 'posts#index'
  resources :posts
  post "posts/create" => "posts#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
