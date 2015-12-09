class Comment < ActiveRecord::Base
  belongs_to :creature
  validates :commenter, presence: true,
  length: { minimum: 1 }
  validates :body, presence: true,
  length: { minimum: 1 }
end
