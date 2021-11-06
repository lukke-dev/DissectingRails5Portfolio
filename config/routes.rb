Rails.application.routes.draw do
  get 'home', to: "pages#home"
  get 'about', to: "pages#about"
  get 'contact', to: "pages#contact"
  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
