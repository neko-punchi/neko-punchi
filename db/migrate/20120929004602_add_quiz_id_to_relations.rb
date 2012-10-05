class AddQuizIdToRelations < ActiveRecord::Migration
  def change
    add_column :relations, :quiz_id, :integer
  end
end
