class Skill < ApplicationRecord
  belongs_to :parent, class_name: 'Skill', optional: true, dependent: :destroy
  has_many :skills_users
  has_many :users, through: :skills_users

  # def children
  #   Skill.all.each do |skill|
  #     if skill.parent != nil
  #       skill.users
  #     end
  #   end
  # end


  def points
    total = 0

    if self.users == nil
      total = 0
    else
      self.users.each do |user|
        total += user.points
      end
    end
    total
  end
end


