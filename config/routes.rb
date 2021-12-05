Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  devise_for :users
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  

  namespace :vendor do
    resources :products
  end

  namespace :admin do
    resources :users do
      member do
        post :make_vendor
      end
    end
    resources :orders  
  end

  resources :cart_items do
    member do
      post :add_product_to_cart
    end
  end

  resources :orders do
    collection do
      post :place_order
    end
  end

  resources :categories do
    collection do
      get :fetch_products
    end
  end
end
