Rails.application.routes.draw do
  get 'books/', to: "books#index", as: "books"
  get 'books/new'
  get 'books/view'
  get 'books/edit'
  get 'books/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/genres", to: "genres#index", as: "genres"
end
