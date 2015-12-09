class Creature < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :name, presence: true,
  length: { minimum: 1 }
  validates :image, presence: true,
  length: { minimum: 1 }
end
