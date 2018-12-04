class Skill < ApplicationRecord
  belongs_to :parent, class_name: 'Skill', optional: true
end
