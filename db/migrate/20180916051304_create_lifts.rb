class CreateLifts < ActiveRecord::Migration[5.1]
  def change
    create_table :lifts do |t|
      t.integer :user_id
      t.date :date
      t.string :notes

      t.timestamps
    end
  end
end
