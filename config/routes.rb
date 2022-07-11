Rails.application.routes.draw do
  root "homes#top"
  get '/edit' => "books#edit"
  get "/show" => "books#show"
  get "/books" => "books#top"

  patch 'books/:id' => 'books#update', as: 'update_book'

  patch "books/:id" => "books#show", as: "show_book"

  delete 'books/:id' => 'books#destroy', as: 'destroy_book'

  resources :books

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
