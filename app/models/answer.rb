class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  has_many :answer_votes

  def upvote_counts
    self.answer_votes.where(upvote:1).count
  end


  def downvote_counts
    self.answer_votes.where(downvote:1).count
  end

end
