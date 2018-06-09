json.total_questions Question.count
json.questions_per_page @questions.count
json.total_pages @questions.page.total_pages
json.next path_to_next_page @questions

json.questions do
    json.array! @questions, partial: 'questions/question', as: :question
end


