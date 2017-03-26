class ChangeYearInProducts < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :year_made, :date
  end
end