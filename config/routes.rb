Rails.application.routes.draw do
  root to: 'homes#top'
  get '/search/top', to: 'searchs#top'
  get '/search', to: 'searchs#search'
  get '/result', to: 'results#result'
end
