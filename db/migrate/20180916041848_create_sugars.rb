class CreateSugars < ActiveRecord::Migration[5.1]
  def change
    create_table :sugars do |t|
      t.date :date
      t.boolean :ate_sugar
      t.integer :user_id

      t.timestamps
    end
  end
end
