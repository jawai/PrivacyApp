Rails.application.routes.draw do
  devise_for :users
  resources :accesses

  get 'policies/index'

  get 'pages/index'

  get 'pages/about'

  get 'pages/contact'

  #root to: "pages#index"

  authenticated :user do #for users signed in, this is the root route
    root 'policies#index', as: :authenticated_root
  end

  root "pages#index"
end
