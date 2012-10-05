class AddQuizIdToRelations < ActiveRecord::Migration
  def change
    add_column :relations, :quiz_id, :integer
    add_index :relations,:quiz_id
  end
end
