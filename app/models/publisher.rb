class Publisher < ApplicationRecord

  has_many :books_publishers, dependent: :destroy
  has_many :books, through: :books_publishers

end
