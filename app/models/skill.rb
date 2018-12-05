class Skill < ApplicationRecord
  belongs_to :parent, class_name: 'Skill', optional: true, dependent: :destroy
  has_many :skills_users
  has_many :users, through: :skills_users

  def points
    total = 0
    self.users.each do |user|
      total += user.points
    end
    total
  end
end
