class ActionalObserver < ActiveRecord::Observer
  def before_create(actional)
    tag = Tag.where(:name => actional.name).first || Tag.create(:name => actional.name)
    actional.tag_id = tag.id
  end
end
