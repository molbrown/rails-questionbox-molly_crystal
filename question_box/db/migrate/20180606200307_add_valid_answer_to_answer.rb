class AddValidAnswerToAnswer < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :valid_answer, :boolean, default: FALSE, null: false
  end
end
