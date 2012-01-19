class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.text :address
      t.integer :zipcode
      t.string :state
      t.integer :phone

      t.timestamps
    end
  end
end
