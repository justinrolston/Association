class Business < ActiveRecord::Base
#      t.string :name
#      t.text :address
#      t.integer :zipcode
#      t.string :state
#      t.integer :phone

  #attr_accessible allows the content to be edited only. 
  attr_accessible :name, :address, :zipcode 
  has_many :contacts
end
