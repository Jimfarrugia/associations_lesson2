Rails.application.routes.draw do
  get 'books/', to: "books#index", as: "books"
  get 'books/new'
  get 'books/:id', to: "books#view", as: "book"
  put 'books/:id', to: "books#update"
  patch 'books/:id', to: "books#update"
  get 'books/:id/edit', to: "books#edit", as: "book_edit"
  get 'books/:id/delete', to: "books#delete", as: "book_delete"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/genres", to: "genres#index", as: "genres"
end