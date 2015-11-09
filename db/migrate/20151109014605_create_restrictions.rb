class CreateRestrictions < ActiveRecord::Migration
  def change
    create_table :restrictions do |t|
      t.string :restriction_type

      t.timestamps null: false
    end
  end
end
