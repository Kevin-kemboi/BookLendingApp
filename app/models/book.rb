class Book < ApplicationRecord
    has_many :borrowings, dependent: :destroy
    validates :title, presence: true
    validates :author, presence: true
    validates :isbn, presence: true, uniqueness: true
  
    def available?
      borrowings.where(returned_at: nil).empty?
    end
  
    def borrow_count
      borrowings.count
    end
  end