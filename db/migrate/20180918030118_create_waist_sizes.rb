class CreateWaistSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :waist_sizes do |t|
      t.integer :inches
      t.integer :user_id

      t.timestamps
    end
  end
end
