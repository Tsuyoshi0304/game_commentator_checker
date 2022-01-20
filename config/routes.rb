Rails.application.routes.draw do
  root to: 'homes#top'

  resources :users, only: %i[new create destroy]

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  get 'name_searches', to: 'name_searches#index'
  get 'name_searches_search', to: 'name_searches#search'

  namespace :simplified do
    get 'searches/new'
    get 'searches/search'
  end

  namespace :normal do
    get 'searches/new'
    get 'searches/search'
  end

  namespace :normal do
    resources :searches, only: %w[new] do
      collection do
        get 'get_gamegenre_children', defaults: { format: 'json' }
      end
    end
  end

  resources :contacts, only: %w[new create] 
  post 'contacts/confirm', 'contacts#confirm'
  post 'contacts/back', 'contacts#back'

  get 'sitemap', to: redirect('https://s3-ap-northeast-1.amazonaws.com/game-commentator-checker/sitemaps/sitemap.xml.gz')
end
