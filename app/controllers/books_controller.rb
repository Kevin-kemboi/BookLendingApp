class BooksController < ApplicationController
  def index
    if params[:query].present?
      @books = Book.where("title LIKE ? OR author LIKE ? OR isbn LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%", "%#{params[:query]}%")
    else
      @books = Book.all
    end
    @total_books = Book.count # Added for total books count
  end

  def show
    @book = Book.find(params[:id])
    @borrowings = @book.borrowings.order(borrowed_at: :desc)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: "Book was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to @book, notice: "Book was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_url, notice: "Book was successfully deleted."
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :isbn, :image_url) # Updated to include image_url
  end
end