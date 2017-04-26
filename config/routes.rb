Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :users
  resources :products do

  get '/products/:id', to: 'products#show', as: 'product'

    collection do
      get :index
    end
  end

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  get 'static_pages/index_by_date'

  get 'static_pages/index_by_artist'

  get 'static_pages/references'

  get 'static_pages/landing_page'

  post 'static_pages/thank_you'

root 'static_pages#landing_page'

resources :orders, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
