Rails
  .application
  .routes
  .draw do
    root to: 'dashboards#show'

    resource :dashboard, only: :show
    resources :occupations
    resources :users
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
