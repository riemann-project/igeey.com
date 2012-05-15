# encoding: utf-8
class ActionalsController < InheritedResources::Base
  before_filter :login_required, :except => [:index, :show]
  before_filter :find_actional, :except => [:index, :new, :create]
  respond_to :html, :json

  def show
    @question = Question.new
    @timeline = @actional.taggings.where(['taggable_type != ?','Question']).map(&:taggable)
  end

  def update
    update!
  end

  def create
    @actional = Actional.new(params[:actional])
    @actional.user = current_user
    @actional.save
    respond_with @actional
  end

  def questions
    @question = Question.new
    @items = @actional.questions.paginate(:page => params[:page])
    render 'see_all'
  end

  private

  def find_actional
    @actional = Actional.find(params[:id])
  end

end
