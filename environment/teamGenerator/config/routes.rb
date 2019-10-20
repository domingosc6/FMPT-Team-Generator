Rails.application.routes.draw do
  resources :difficulties
  resources :challenge_types
  resources :challenges
  resources :competitions
  resources :teams
  resources :countries
  resources :continents
  
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
end

