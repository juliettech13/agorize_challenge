class Skill < ApplicationRecord
  # belongs_to :parent, foreign_key: 'Skill'
  belongs_to :parent, class_name: 'Skill', optional: true
  #  foreign_key: "skill_id"
  # has_many :children, foreign_key: "skill_id"
end
