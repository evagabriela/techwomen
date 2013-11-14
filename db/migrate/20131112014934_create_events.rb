class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_time
      t.string :location
      t.string :group
      t.string :category
      t.string :address
      t.string :description
      t.string :link
      t.integer :meetup_id
      t.integer :price

      t.timestamps
    end
  end
end
