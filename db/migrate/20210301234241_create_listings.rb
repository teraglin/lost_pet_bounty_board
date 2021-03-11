class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.integer :bounty
      t.boolean :completed
      t.date :lost_date

      t.timestamps
    end
  end
end
