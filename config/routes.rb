Rails.application.routes.draw do
  devise_for :users

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  namespace :admin do
    root "users#index"
    resources :users
  end
end
