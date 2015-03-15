require 'rails_helper'
require 'support/test_factories'
 
 describe Comment do

  include TestFactories

  describe "after_create" do

    before do
      @post = associated_post
      @user = authenticated_user
      @comment = Comment.new(body: 'My comment', post: @post, user_id: 10000)
    end

    it "Delivers e-mail notiication after e-mailing a post" do
      @user.favorites.where(post: @post).create

      allow( FavoriteMailer )
      .to receive(:new_comment)
      .with(@user, @post, @comment)
      .and_return( double(deliver: true) )

      @comment.save
    end

    it "If not favorited, don't send e-mail" do
      expect( FavoriteMailer )
        .not_to receive(:new_comment)

        @comment.save
    end
  end
end