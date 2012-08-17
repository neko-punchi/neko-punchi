class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.text :text , :null => false, :limit => 1500
      t.text :choose, :limit => 800
      t.string :answer, :limit => 50
      t.text :hint, :limit => 1500

      t.timestamps
    end
  end
end
