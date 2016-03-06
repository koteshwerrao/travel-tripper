Rails.application.routes.draw do
  resources :page_designs
 root 'home#index'
 devise_for :users, controllers: { sessions: "users/sessions" ,registrations: "users/registrations",passwords: "users/passwords"}
end
