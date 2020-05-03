class BooksPublisher < ApplicationRecord
  belongs_to :book
  belongs_to :publisher
  validates_uniqueness_of :book_id, scope: [:publisher_id]
end
