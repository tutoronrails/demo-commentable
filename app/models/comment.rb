class Comment < ApplicationRecord
  validates :username, presence: true
  validates :message, presence: true
  belongs_to :commentable, polymorphic: true
end
