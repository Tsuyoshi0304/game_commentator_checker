Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  get "rankings/index"
  root to: "homes#top"

  resources :users, only: %i[new create destroy]

  resources :password_resets, only: %i[new create edit update]

  get "diagnosis_history", to: "diagnosis_histories#index"
  namespace :diagnosis_history, only: %i[show] do
    resources :commentators, only: %i[show] do
      resources :reviews, only: %i[create edit show update destroy]
    end
  end

  resources :commentators, only: %i[index show]

  resource :profile, only: %i[show edit update destroy]

  resources :reviews, only: %i[index]

  resource :ranking, only: %i[index]

  get "login", to: "user_sessions#new"
  post "login", to: "user_sessions#create"
  delete "logout", to: "user_sessions#destroy"

  get "name_searches", to: "name_searches#index"
  get "name_searches_search", to: "name_searches#search"

  namespace :simplified do
    get "searches/new"
    get "searches/search"
  end

  namespace :normal do
    get "searches/new"
    get "searches/search"
  end

  namespace :normal do
    resources :searches, only: %w[new] do
      collection do
        get "take_gamegenre_children", defaults: { format: "json" }
      end
    end
  end

  resources :contacts, only: %w[new create]
  post "contacts/confirm", "contacts#confirm"
  post "contacts/back", "contacts#back"

  get "sitemap", to: redirect("https://s3-ap-northeast-1.amazonaws.com/game-commentator-checker-bucket/sitemaps/sitemap.xml.gz")
end
