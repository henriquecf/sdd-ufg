Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :klasses
  resources :distribution_processes
  resources :knowledge_groups
  resources :grades
  resources :courses
  resources :teachers
  devise_for :users

  root to: 'pages#index', as: :home
end
