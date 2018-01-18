class BooksController < ApplicationController
  before_action :set_book, only: [:edit, :update, :destroy]
  def index
    @books =Book.all
  end
  def new
    @book = Book.new
  end
  def edit
  end
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path, notice: 'book was successfully created.'
    else
      render :new
    end
  end
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to books_path, notice: 'book was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to book_url, notice: 'book was successfully destroyed.' }
    end
  end
  private 
  def set_book
    @book = Book.find(params[:id])
  end
  def book_params
    params.require(:book).permit :title, :content, :author
  end
end
