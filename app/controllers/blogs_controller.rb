# encoding: utf-8
class BlogsController < InheritedResources::Base
  respond_to :html, :rss
  before_filter :login_required, :except => [:show, :index]
  before_filter :find_blog,      :except => [:create, :new, :index]
  before_filter :set_problems,   :only  =>  [:index, :show]

  def show
    @comments = @blog.comments
  end

  def update
    @blog.update_attributes(params[:blog])
    if params[:back_path].present?
      redirect_to params[:back_path]
    else
      respond_with @blog
    end
  end

  private

  def find_blog
    if /^[\d]*$/.match(params[:id])
      @blog = Blog.find(params[:id])
    else
      @blog = Blog.find_by_en_title(params[:id])
    end
    render :file => "public/404.html", :status => 404, :layout => false if @blog.nil?
  end

  def set_problems
    @problems = Problem.published.limit(7).reverse
    @current_problems = @problems[3..6] 
    @prev_problems = @problems[0..2] 
  end
end
