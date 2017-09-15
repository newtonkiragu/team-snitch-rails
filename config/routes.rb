Rails.application.routes.draw do
  resources :levels
  root to: 'schools#index'
  resources :streams
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :mzazis, controllers: {
      sessions: 'mzazi/sessions',
      passwords: 'mzazi/passwords',
      registrations: 'mzazi/registrations',
      unlocks: 'mzazi/unlocks',
      confirmations: 'mzazi/ confirmations'
  }
  devise_for :mwanafunzis
  resources :teacher_attachments
  resources :school_attachments
  resources :students do
    resources :parents
    resources :grades
  end
  resources :assignments
  resources :subjects
  resources :teachers
  resources :schools
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
