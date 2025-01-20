class BooksController < ApplicationController
  def index
    render json: Book.all
  end
#pushing this to test commits since my other commit didnt work
  def create
    book = Book.new(book_params)

    if book.save
      render json: book, status: :created
    else
      render json: book.errors, status: :unproccessable_entity
    end
  end

  private

  def book_params
    params.require(:Book).permit(:title,:author)
  end


end
