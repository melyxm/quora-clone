class CreateAnswer < ActiveRecord::Migration
def change
  create_table :answers do |t|
    t.string :content
    t.integer :user_id
    t.string :question_id
  end
end
end
