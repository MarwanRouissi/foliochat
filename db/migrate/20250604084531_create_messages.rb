class CreateMessages < ActiveRecord::Migration[7.2]
  def change
    create_table :messages do |t|
      t.text :user_question
      t.text :ai_answer

      t.timestamps
    end
  end
end
