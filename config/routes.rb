Rails.application.routes.draw do
  root to: 'schools#index'
  resources :streams
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :mzazis
  devise_for :mwanafunzis
  resources :school_attachments
  resources :students do
    resources :parents
  end
  resources :assignments
  resources :subjects
  resources :teachers
  resources :schools
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
