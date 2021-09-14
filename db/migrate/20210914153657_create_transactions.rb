class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :payer
      t.integer :points
      t.date :timestamp
      t.integer :user_id

      t.timestamps
    end
  end
end
