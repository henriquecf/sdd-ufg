Rails.application.routes.draw do
  resources :grades
  resources :courses
  resources :teachers
  devise_for :users

  root to: 'pages#index', as: :home
end
