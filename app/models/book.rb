class Book < ApplicationRecord
  belongs_to :author
  has_many :articles
  validates :title, presence: true

  has_many :books_publishers, dependent: :destroy
  has_many :publishers, through: :books_publishers

end
