Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'users/confirmations' }
  root to: 'home#index'
end
