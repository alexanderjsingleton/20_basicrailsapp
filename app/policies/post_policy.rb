class PostPolicy < ApplicationPolicy
  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      if user.admin?
        scope.all
      elsif moderator?
        scope.all
      else
        scope.where(:published => true)
      end
    end
  end


  def index?
    true
  end

  def update?
    user.admin? or not post.published?
  end

end

# class PostPolicy < ApplicationPolicy
#   def permitted_attributes
#     if user.admin? || user.owner_of?(post)
#       [:title, :body, :tag_list]
#     else
#       [:tag_list]
#     end
#   end
# end