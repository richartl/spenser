class CreateCreditCardExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_card_expenses do |t|
      t.string :description
      t.timestamps
    end
    add_reference :credit_card_expenses, :credit_card, index: true
  end
end
