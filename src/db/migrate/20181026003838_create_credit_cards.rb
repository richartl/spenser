class CreateCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_cards do |t|
      t.string :display_name, null: false
      t.string :brand, null: false
      t.float :credit_limit, null: false
      t.date :pay_date, null: false
      t.date :cutoff_date, null: false
      t.datetime :deleted_at, null: false
      t.timestamps
    end
    add_index :credit_cards, :deleted_at
  end
end
