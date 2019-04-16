class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
  end

  def view
  end

  def edit
  end

  def delete
  end
end
