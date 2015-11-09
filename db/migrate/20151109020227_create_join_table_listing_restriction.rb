class CreateJoinTableListingRestriction < ActiveRecord::Migration
  def change
    create_join_table :listings, :restrictions do |t|
      t.index [:listing_id, :restriction_id]
      t.index [:restriction_id, :listing_id]
    end
  end
end
