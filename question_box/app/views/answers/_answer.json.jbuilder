json.extract! answer, :id, :user_id, :question_id, :text, :created_at, :updated_at, :valid_answer
json.url answer_url(answer, format: :json)