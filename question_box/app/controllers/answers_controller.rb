class AnswersController < ApplicationController
    def show
        @answer = Answer.find(params[:id])
    end


    def new
        @question = Question.find(params[:question_id])
        if current_user
            @answer = Answer.new
        else
            redirect_to question_path(@question), alert: "You must be logged in to answer."
        end
    end

    def create
        @answer = Answer.new(answer_params)
        if @answer.save
            AnswerMailer.new_answer(@answer.question).deliver_now
            redirect_to question_path(@answer.question_id)
        else
            render 'new'
        end
    end

    def edit
        @answer = Answer.find(params[:id])
        @question = Question.find(params[:question_id])
    end

    def update
        @answer = Answer.find(params[:id])
        if @answer.update_attributes(answer_params)
            redirect_to question_path(@answer.question_id)
        else
            render 'new'
        end
    end

    def destroy
        @answer = Answer.find(params[:id])
        @id = @answer.question_id
        if current_user.id == @answer.user_id
            @answer.destroy
            redirect_to question_path(@id)
        else
            redirect_to question_path(@id), alert: 'Only answer creator can delete.'
        end
    end

    private
    def answer_params
        params.require(:answer).permit(:question_id, :text, :user_id, :valid_answer)
    end
end
