# class Creature < ActiveRecord::Base
#   has_many :comments, dependent: :destroy
# validates :name, presence: true,
# length: { minimum: 1 }
# validates :image, presence: true,
# length: { minimum: 1 }
# end

class Creature < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :name, presence: true,
  length: { minimum: 1 }
  validates :description, presence: true,
  length: { minimum: 1 }
  validates :image, presence: true,
  length: { minimum: 1 }

  validate do |creature|
    creature.comments.each do |creature|
      next if creature.valid?
      creature.errors.full_messages.each do |msg|
        errors[:base] << msg
      end
    end
  end

end
