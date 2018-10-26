class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.float :amount, null: false
      t.references :transable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
