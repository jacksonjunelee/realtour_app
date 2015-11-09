class CreateJoinTableAmenityListing < ActiveRecord::Migration
  def change
    create_join_table :amenities, :listings do |t|
      t.index [:amenity_id, :listing_id]
      t.index [:listing_id, :amenity_id]
    end
  end
end
