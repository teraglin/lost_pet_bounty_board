class RemoveLostDateFromListings < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :lost_date, :date
  end
end
