class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :question, null: false
      t.integer :question_id,
      t.timestamps
    end
  end
end
