class AddColumnsToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :incorrect_answer_a, :string
    add_column :questions, :incorrect_answer_b, :string
    add_column :questions, :incorrect_answer_c, :string
  end
end
