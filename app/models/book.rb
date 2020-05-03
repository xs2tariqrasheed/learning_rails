class Book < ApplicationRecord
  belongs_to :author
  has_many :articles
  validates :title, presence: true

  has_many :books_publishers, dependent: :destroy
  has_many :publishers, through: :books_publishers

  after_create :check_status

  def check_status
    puts "======= create here ========="
    self.total_page = Publisher.count
    self.save
    # FooJob.perform_later(self, self.author.name)
    CheckStatusChannel.broadcast_to(self.author.name, {data: {text: self.author.name + "::" + self.title }})
  end

end
