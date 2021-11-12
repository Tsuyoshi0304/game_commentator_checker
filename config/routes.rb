Rails.application.routes.draw do
  root to: 'homes#top'

  get 'searches/new', to: 'searches#new'
  get 'searches/search', to: 'searches#search'
end
