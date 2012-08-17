class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.references :category
      t.references :sub_category

      t.timestamps
    end
    add_index :relations, :category_id
    add_index :relations, :sub_category_id
  end
end
