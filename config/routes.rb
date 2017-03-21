Rails.application.routes.draw do
  resources :products do
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

root 'products#index'

resources :orders, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
