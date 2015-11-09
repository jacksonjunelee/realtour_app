class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address,            null:false, default: ""
      t.string :city,               null:false, default: ""
      t.string :state,              null:false, default: ""
      t.string :borough,            null:false, default: ""
      t.integer :zip,               null:false
      t.string :building_name,      null:false, default: ""
      t.string :apt_num,            null:false, default: ""
      t.string :room_type,          null:false, default: ""
      t.integer :bedroom
      t.integer :bathroom
      t.string :property_type
      t.integer :area
      t.string :minimum_stay
      t.date :move_in
      t.text :the_space
      t.text :the_neighborhood
      t.boolean :furnished
      t.datetime :list_date
      t.boolean :active
      t.datetime :inactive_date
      t.datetime :modified_date
      t.integer :price
      t.string :rent_or_sublease,   null:false, default: ""
      t.integer :guest_capacity
      t.references :user
    end
    add_index :listings, :user_id
  end
end
