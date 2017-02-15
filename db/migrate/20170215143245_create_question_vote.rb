class CreateQuestionVote < ActiveRecord::Migration
  def change
    create_table :question_votes do |t|
      t.integer :question_id
      t.integer :user_id
      t.integer :upvote
      t.integer :downvote
    end
  end
end
