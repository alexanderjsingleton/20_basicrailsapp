class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user, autosave: true

  default_scope { order('created_at DESC') }
end