class CreateDinners < ActiveRecord::Migration[6.0]
  def change
    create_table :dinners do |t|
      t.string :title
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.references :guests
      t.integer :guest_capacity
      t.integer :cost_per_guest
      t.datetime :time_and_date
      t.string :location

      t.timestamps
    end
  end
end
