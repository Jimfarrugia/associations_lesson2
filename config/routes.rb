Rails.application.routes.draw do
  # books index
  get 'books/', to: "books#index", as: "books"

  # create book
  get 'books/new'

  # view book
  get 'books/:id', to: "books#view", as: "book"

  # update book
  put 'books/:id', to: "books#update"
  patch 'books/:id', to: "books#update"
  get 'books/:id/edit', to: "books#edit", as: "book_edit"

  # delete book
  get 'books/:id/delete', to: "books#delete", as: "book_delete"

  # genres index
  get "/genres", to: "genres#index", as: "genres"
end