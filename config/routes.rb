Rails.application.routes.draw do

  get 'favorites/create'

  get 'favorites/destroy'

  resources :sessions, only: [:new, :create, :destroy]

  resources :users do
    collection do
      post :confirm
    end
  end

  resources :pictures do
    collection do
      post :confirm
    end
  end

  resources :favorites, only: [:create, :destroy]

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
