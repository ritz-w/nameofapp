class AddYear < ActiveRecord::Migration[5.0]
  def change
    rename_column :products, :year, :year
  end
end
