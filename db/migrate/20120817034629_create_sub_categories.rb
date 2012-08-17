class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.references :category
      t.string :sub_category , :null => false, :limit => 80

      t.timestamps
    end
    add_index :sub_categories, :category_id
  end
end
