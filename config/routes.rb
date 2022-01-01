Rails.application.routes.draw do
  root to: 'homes#top'

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
end
