class Book < ApplicationRecord
  belongs_to :author
  has_many :articles
  validates :title, presence: true
end
