class AddFloorMapColumnsToListings < ActiveRecord::Migration
  def change
     add_attachment :listings, :floor_map
  end
end
