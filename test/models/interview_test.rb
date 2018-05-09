require 'test_helper'

class InterviewTest < ActiveSupport::TestCase

  def setup
    create_answers_and_ratings
  end

  test "interviews have multiple questions" do
    i = interviews(:first_driver_interview)
    assert i.interview_questions.any?
  end
  
  test "interview questions should have answers" do
    i = interviews(:first_driver_interview)
    assert i.questions.first.answers.any?
  end

  test "interview questions should be in order" do
    i = interviews(:first_driver_interview)
    assert_equal i.interview_questions.order(:display_order).first.display_order, 1
  end

  test "interview schedule for interviewer" do
    i = interviews(:first_driver_interview)
    interview_schedule = interviews(:first_driver_interview).interviewers
    candidate_info =  interviews(:first_driver_interview).candidate_id
    candidate_name = interviews(:first_driver_interview).candidate.name
    candidate_email = interviews(:first_driver_interview).candidate.email
    candidate_phone = interviews(:first_driver_interview).candidate.phone
    questions = interviews(:first_driver_interview).candidate.questions
  end

end
