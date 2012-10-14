class AddSubTextToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :sub_text, :string
  end
end
