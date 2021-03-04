class AddLostDateToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :lost_date, :datetime
  end
end
