class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.string :description
      t.integer :price
      t.string :event_that_belongs_to
      t.references :Event, foreign_key: true

      t.timestamps
    end
  end
end
