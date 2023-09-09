class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.text :prompt
      t.text :answer
      t.integer :difficulty
      t.string :topic
      t.text :fake_answers, array: true, default: []

      t.timestamps
    end
  end
end
