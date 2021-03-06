class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :favorites, dependent: :destroy
  belongs_to :user
  belongs_to :topic

  default_scope { order('rank DESC') }
   scope :visible_to, -> (user) { user ? all : joins(:topic).where('topics.public' => true) }
  # after_create :create_vote
  mount_uploader :image, ImageUploader, mount_on: :image

  def up_votes
    # alternatively, self.votes.where(value: 1).count --> Remember votes in the above code is an implied self.votes.
    votes.where(value: 1).count
  end

  def down_votes
    votes.where(value: -1).count
  end

  def points
    votes.sum(:value).to_i
  end

  validates :title, length: { minimum: 5 }, presence: true
  validates :body, length: { minimum: 20 }, presence: true
  validates :topic, presence: true
  validates :user, presence: true

 def update_rank
   age_in_days = (created_at - Time.new(1970,1,1)) / (60 * 60 * 24) # 1 day in seconds
   new_rank = points + age_in_days
 
   update_attribute(:rank, new_rank)
 end

 # private

 def create_vote
  user.votes.create(value: 1, post: self)
 end

end