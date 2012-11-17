class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :quiz_id
      t.integer :correct
      t.integer :wrong
      t.timestamps
    end
  end
end
