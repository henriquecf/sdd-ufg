Rails.application.routes.draw do
  resources :knowledge_groups
  resources :grades
  resources :courses
  resources :teachers
  devise_for :users

  root to: 'pages#index', as: :home
end
