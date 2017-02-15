class CreateAnswerVote < ActiveRecord::Migration
  def change
    create_table :answer_votes do |t|
      t.integer :answer_id
      t.integer :user_id
      t.integer :upvote
      t.integer :downvote
    end
  end
end
