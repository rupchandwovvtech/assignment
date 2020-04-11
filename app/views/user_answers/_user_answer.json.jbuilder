json.extract! user_answer, :id, :answer, :question_id, :user_id, :created_at, :updated_at
json.url user_answer_url(user_answer, format: :json)
