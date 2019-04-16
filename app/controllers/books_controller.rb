class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
  end

  def view
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
    @genres = Genre.all
  end

  def update
    book = Book.find(params[:id])
    book.update(title: params[:title])
    # ISSUE: The line below edits the authors table directly, affecting other (associated)books.
    # Possible solution:
    # Create a new Author record if the input isn't found,
    # else: associate this book with the existing author.
    book.author.update(name: params[:author])

    # TODO: update book.genres with user input values
    # (add genres that are selected and remove genres that aren't selected.)

    redirect_to book_path
  end

  def delete
  end
end
