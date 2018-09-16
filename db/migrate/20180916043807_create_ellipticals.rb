class CreateEllipticals < ActiveRecord::Migration[5.1]
  def change
    create_table :ellipticals do |t|
      t.integer :user_id
      t.date :date
      t.integer :minutes
      t.float :distance

      t.timestamps
    end
  end
end
