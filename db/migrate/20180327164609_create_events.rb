class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.date :start_date
      t.string :place_to_host_the_event
      t.references :Place, foreign_key: true

      t.timestamps
    end
  end
end
