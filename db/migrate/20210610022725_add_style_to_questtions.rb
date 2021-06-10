class AddStyleToQuesttions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :style, :string
  end
end
