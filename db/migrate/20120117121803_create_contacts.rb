class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.references :business

      t.timestamps
    end
    add_index :contacts, :business_id
  end
end
