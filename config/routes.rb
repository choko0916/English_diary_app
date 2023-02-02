Rails.application.routes.draw do
  root "homes#index"
  get "homes/show"
  resource :profiles, only: [:edit, :update]
  resources :diaries
  resources :all_diaries, only: [:index]
  resources :words
  resources :exams, only: [:show, :create]
  resources :exam_questions, only: [:show]
  get "words_tests/test"
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
  }
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
