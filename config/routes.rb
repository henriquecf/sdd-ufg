Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :klasses
  resources :distribution_processes
  resources :knowledge_groups
  resources :grades
  resources :courses
  resources :teachers
  devise_for :users

  root to: 'rails_admin/main#dashboard', as: :home
end
