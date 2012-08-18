class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.text :text , :null => false
      t.text :choose 
      t.string :answer
      t.text :hint 

      t.timestamps
    end
  end
end
