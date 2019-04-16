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
  end

  def delete
  end
end
