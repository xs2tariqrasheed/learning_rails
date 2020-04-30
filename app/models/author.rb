class Author < ApplicationRecord
  has_many :books, dependent: :destroy

  def author_obj
    self.attributes.merge(books: self.books)
  end

end
