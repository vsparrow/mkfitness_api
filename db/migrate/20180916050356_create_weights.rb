class CreateWeights < ActiveRecord::Migration[5.1]
  def change
    create_table :weights do |t|
      t.integer :user_id
      t.date :date
      t.integer :weight

      t.timestamps
    end
  end
end
