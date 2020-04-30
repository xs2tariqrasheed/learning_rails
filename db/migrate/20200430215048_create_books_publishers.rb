class CreateBooksPublishers < ActiveRecord::Migration[5.2]
  def change
    create_table :books_publishers do |t|
      t.references :book, foreign_key: true
      t.references :publisher, foreign_key: true

      t.timestamps
    end
  end
end
