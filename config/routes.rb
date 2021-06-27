Rails.application.routes.draw do
  root 'staffs#index'
  resources :staffs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
