Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :posts, only: [:index, :create, :show, :update, :destroy]
    end
  end
  get 'posts/:id/edit', to: 'home#index';
  get 'posts/:id', to: 'home#index';
  get 'posts/new', to: 'home#index';
  root 'home#index'
end
