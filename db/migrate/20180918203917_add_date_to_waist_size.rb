class AddDateToWaistSize < ActiveRecord::Migration[5.1]
  def change
    add_column :waist_sizes, :date, :date
  end
end
