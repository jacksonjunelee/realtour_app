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
      t.datetime :list_date
      t.boolean :active
      t.datetime :inactive_date
      t.datetime :modified_date
      t.integer :price,             :decimal, precision: 5
      t.string :rent_or_sublease,   null:false, default: ""
      t.integer :guest_capacity
    end
  end
end
