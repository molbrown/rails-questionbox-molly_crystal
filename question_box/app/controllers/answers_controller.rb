class AnswersController < ApplicationController
    skip_before_action :verify_authentication, only: [:show]

    def show
        @answer = Answer.find(params[:id])
    end


    def new
        @question = Question.find_by(id: params[:question_id])
        if current_user
            @answer = Answer.new
        else
            redirect_to question_path(@question), alert: "You must be logged in to answer."
        end
    end

    def create
        @answer = Answer.new(answer_params)
        # @answer.user_id = current_user.id
        @question = Question.find_by(id: params[:answer][:question_id])
        if @answer.save
            # AnswerMailer.new_answer(@answer.question).deliver_now
            respond_to do |format|
                format.html {redirect_to question_path(@question)}
                format.json { render :show, status: 201, location: @answer.question }
            end
        else
            respond_to do |format|
                format.html { redirect_to question_path(@question) }
                format.json { render json: @answer.errors, status: 400 }
            end
        end
    end

    def edit
        @answer = Answer.find(params[:id])
        @question = Question.find(@answer.question_id)
    end

    def update
        @answer = Answer.find(params[:id])
        if @answer.update_attributes(answer_params)
            respond_to do |format|
                format.html {redirect_to question_path(@answer.question_id)}
                format.json { render :show, status: :ok, location: @answer.question }
            end
        else
            respond_to do |format|
                format.html { render :edit }
                format.json { render json: @question.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @answer = Answer.find(params[:id])
        @id = @answer.question_id
        if current_user.admin || current_user.id == @answer.user_id
            @answer.destroy
            respond_to do |format|
                format.html { redirect_to question_path(@id), notice: 'Answer was successfully destroyed.' }
                format.json { head :no_content }
            end
        end
    end

    private
    def answer_params
        if request.xhr?
            params.permit(:question_id, :text, :user_id, :valid_answer)
        else
            params.require(:answer).permit(:question_id, :text, :user_id, :valid_answer)
        end
    end
end

