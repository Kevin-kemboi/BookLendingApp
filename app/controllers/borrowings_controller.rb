class BorrowingsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @borrowing = @book.borrowings.build(borrowing_params)
    @borrowing.borrowed_at = Time.current
    if @borrowing.save
      redirect_to @book, notice: "Book was successfully borrowed."
    else
      redirect_to @book, alert: "Failed to borrow book."
    end
  end

  def update
    @borrowing = Borrowing.find(params[:id])
    if @borrowing.update(returned_at: Time.current)
      redirect_to @borrowing.book, notice: "Book was successfully returned."
    else
      redirect_to @borrowing.book, alert: "Failed to return book."
    end
  end

  def borrower_history
    @borrower_name = params[:borrower_name]
    @filter = params[:filter] || "all"
    borrowings = Borrowing.where(borrower_name: @borrower_name).order(borrowed_at: :desc)
    @borrowings = case @filter
                  when "current" then borrowings.where(returned_at: nil)
                  when "returned" then borrowings.where.not(returned_at: nil)
                  else borrowings
                  end
  end

  private

  def borrowing_params
    params.require(:borrowing).permit(:borrower_name)
  end
end