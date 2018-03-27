class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.string :user
      t.references :User, foreign_key: true
      t.string :ticket
      t.references :Ticket, foreign_key: true
      t.boolean :paid

      t.timestamps
    end
  end
end
