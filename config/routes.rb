Rails.application.routes.draw do
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}

  devise_for :customers, controllers: {
  sessions:      'customers/sessions',
  passwords:     'customers/passwords',
  registrations: 'customers/registrations'
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'public/homes#top'
  scope module: :public do
    get "about" => "homes#about"
    resources :items,only: [:index, :show]
    #get 'customers' => 'customers#show'
    resources :customers,only: [:show, :edit]
    #get 'customers/edit' => 'customers#edit'
    resources :carts, only: [:create, :destroy]
    resources :cart_items, only: [:create, :destroy, :update, :index]
    patch 'customers' => 'customers#update'
    post 'customers' => 'customers#create'
    patch 'customers/:id' => 'customers#withdraw'
  end

   namespace :admin do
     resources :cart_items
     resources :items
     resources :genres,only: [:index, :create, :edit, :update]
     resources :customers,only: [:index,:show,:edit,:update]
  end

end