class CreateCarbs < ActiveRecord::Migration[5.1]
  def change
    create_table :carbs do |t|
      t.integer :user_id
      t.date :date
      t.boolean :stop_eat_at_x
      t.string :time

      t.timestamps
    end
  end
end
