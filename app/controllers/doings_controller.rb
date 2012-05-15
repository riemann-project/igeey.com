class DoingsController < InheritedResources::Base
  before_filter :login_required

  def create
    @doing = current_user.doings.build(params[:doing])
    create! { @doing.venue } 
  end

  def destroy
    @doing = Doing.find(params[:id])
    @doing.destroy if @doing.owned_by?(current_user)
    if params[:back_path].present?
      redirect_to params[:back_path]
    else
      respond_with @doing
    end
  end
end
