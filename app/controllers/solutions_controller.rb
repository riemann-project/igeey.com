# encoding: utf-8
class SolutionsController < InheritedResources::Base#ApplicationController
  belongs_to :problem

  before_filter :login_required, :except => :index
  before_filter :find_problem, :except => [:index, :new]
  
  # TODO: authentication inherited_resouces is ok?! ... More tests ... ...

  # def index
  #   @solutions = @problem.solutions
  # end
  
  # def new
  #   @solution = @problem.solutions.build
  # end
  
  def show
    @solution = Solution.find(params[:id])
    @comments = @solution.comments
  end
  
  def create
    @solution = @problem.solutions.build(params[:solution])
    @solution.user = current_user
    @solution.save
    respond_with @problem
  end
  
  private
  def find_problem
    @problem = Problem.find(params[:problem_id])
  end
end
