Rails.application.routes.draw do
  resources :crafts do
    resources :comments
    member do
      put 'like', to: "crafts#like"
      put 'unlike', to: "crafts#unlike"
    end
  end
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: "crafts#index"
  # get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
