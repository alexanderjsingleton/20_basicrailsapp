class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :votes, dependent: :destroy
  has_many :favorites, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

    mount_uploader :avatar, AvatarUploader

  
  # This method, called on a given user, looks at the role stored for that user in the database. It returns true or false based on whether the stored role equals the expected value.         
  # Remember the implied self? The role in this method is really self.role.
  def admin?
    role == 'admin'
  end

  def moderator?
    role == 'moderator'
  end

  def favorited(post)
   favorites.where(post_id: post.id).first
  end
end