Rails.application.routes.draw do
  root to: 'homes#top'

  get 'searches/new', to: 'searches#new'
  get 'searches/search', to: 'searches#search'

  resources :searches, only: %w[new] do
    collection do
      get 'get_gamegenre_children', defaults: { format: 'json' }
    end
  end
end
