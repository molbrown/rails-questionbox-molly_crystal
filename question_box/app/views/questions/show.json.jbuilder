# json.partial! "questions/question", question: @question
# json.partial! "answers/answer", answer: @questions.answers


# json.id @story.id
# json.text @story.text
# json.user_id @story.user_id

# json.links do
#     json.self api_v1_question_path(@question)
#     json.list api_v1_questions_path
#     json.update do
#         json.method "PUT"
#         json.href api_v1_question_path(@question)
#     end
#     json.delete do
#         json.method "DELETE"
#         json.href api_v1_question_path(@question)
#     end
# end
json.data do
    json.id @question.id
    json.attributes do
        json.id @question.id
        json.title @question.title
        json.body @question.body
        json.user_id @question.user_id
        json.created @question.created_at
        json.updated @question.updated_at
        json.answers @question.answers
    end
end