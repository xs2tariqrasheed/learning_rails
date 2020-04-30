class CreatePublishers < ActiveRecord::Migration[5.2]
  def change
    create_table :publishers do |t|
      t.string :title
      t.string :location

      t.timestamps
    end
  end
end
