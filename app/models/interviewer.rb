class Interviewer < ApplicationRecord
  has_many :answer_ratings
  has_many :interviews

end