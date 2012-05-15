# encoding: utf-8
class AnswersController < InheritedResources::Base
  before_filter :login_required, :except => [:index, :show, :redirect]
  respond_to :html, :js, :xml
  before_filter :find_answer, :only => [:edit, :update, :destroy, :show, :redirect, :veto]

  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build(params[:answer])
    @answer.user  = current_user
    @answer.save
    redirect_to @question
  end

  def destroy
    destroy! { @question }
  end

  def update
    update! { @question }
  end

  def veto
    user_ids = (@answer.vetos_user_ids + " #{current_user.id}").split(' ').uniq
    @answer.update_attribute(:vetos_count, user_ids.length)
    @answer.update_attribute(:vetos_user_ids, user_ids.join(' '))
    respond_to do |format|
      format.html {redirect_to params[:back_path] || :back}
      format.js {render :text => ''} 
    end
  end

  def redirect
    redirect_to "#{ question_path(@answer.question) }##{ @answer.id }"
  end
  private

  def find_answer
    @answer = Answer.find(params[:id])
    @question = @answer.question
  end

end
