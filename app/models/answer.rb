class Answer < ApplicationRecord
  belongs_to :candidate
  belongs_to :question
  belongs_to :interview
  has_many :answer_ratings

  def average_rating
  	answer_ratings.where.not(rating: 0).average(:rating).to_f
  end

end
