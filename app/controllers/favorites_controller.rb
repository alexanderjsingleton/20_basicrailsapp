class FavoritesController < ApplicationController
  def create
    # @topic = Topic.find(params[:topic_id])
     @post = Post.find(params[:post_id])
     favorite = current_user.favorites.build(post: @post)

    authorize favorite
    if favorite.save
      flash[:notice] = "Favorited post"
      #or is the below-> redirect_to [@topic, @post]
      redirect_to [@post.topic, @post]
    else
      flash[:error] = "Unable to Favorite. Please try again."
      #or is the below-> redirect_to [@topic, @post]
      redirect_to [@post.topic, @post]
    end
  end

    def destroy
     # @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    favorite = current_user.favorites.find(post: @post)
    # @post = @topic.posts.find(params[:post_id])
    favorite = current_user.favorites.find(params[:id])

    authorize favorite
    if favorite.destroy
      flash[:notice] = "Removed favorite"
      #or is the below-> redirect_to [@topic, @post]
      redirect_to [@post.topic, @post]
    else
      flash[:error] = "Unable to remove Favorite. Please try again."
      #or is the below-> redirect_to [@topic, @post]
      redirect_to [@post.topic, @post]
    end
  end

end

