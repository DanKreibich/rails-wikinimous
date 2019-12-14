Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'articles', to: 'articles#index'

  get 'articles/new', to: 'articles#new', as: :new_article
  post 'articles', to: 'articles#create'

  get 'articles/:id', to: 'articles#show', as: :details

  # continue with edit/update ... not working yet

  get 'articles/:id/edit', to: 'articles#edit', as: :edit
  post 'articles/:id', to: 'articles#update'
end
