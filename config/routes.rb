Rails.application.routes.draw do
  root 'staffs#new'
  resources :staffs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
