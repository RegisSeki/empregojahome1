Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  resources :jobs, only:[:show, :new, :create]
  resources  :companies, only:[:new, :create]
end
