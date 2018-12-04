class Skill < ApplicationRecord
  belongs_to :parent, class_name: 'Skill', optional: true
  has_many :users
  belongs_to :user

  def points
    if self.user == nil
      points = 0
    else
      points += self.user.points
    end
  end
end
