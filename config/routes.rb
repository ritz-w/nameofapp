Rails.application.routes.draw do
  resources :products do
    collection do
      get :index
    end
  end

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

root 'static_pages#landing_page'

resources :orders, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
