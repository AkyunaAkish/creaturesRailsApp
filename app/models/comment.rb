class Comment < ActiveRecord::Base
  belongs_to :creature
  validates :commenter, presence: true
  validates :body, presence: true
end
