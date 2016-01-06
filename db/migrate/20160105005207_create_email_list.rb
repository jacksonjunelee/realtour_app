class CreateEmailList < ActiveRecord::Migration
  def change
    create_table :email_lists do |t|
      t.string :email,          null: false, default: ""
    end
  end
end
