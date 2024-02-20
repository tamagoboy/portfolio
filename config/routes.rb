Rails.application.routes.draw do
  resources :dishes do
    collection do
      get 'random'
    end
  end
  
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'dishes#top'
  resources :dishes, only:[:new, :create, :index, :show, :destroy, :edit, :update, :all_records] do
    resource :favorites, only:[:create, :destroy]
  end
  
  resources :users, only: [:show, :edit, :update]
end
