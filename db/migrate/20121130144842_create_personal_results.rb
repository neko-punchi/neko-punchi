class CreatePersonalResults < ActiveRecord::Migration
  def change
    create_table :personal_results do |t|
      t.string :provider
      t.string :uid
      t.integer :category_id
      t.integer :sub_category_id
      t.integer :correct
      t.integer :wrong

      t.timestamps
    end
  end
end
