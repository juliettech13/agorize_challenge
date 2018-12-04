class AddParentIdToSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :parent_id, :integer, index: true
    add_foreign_key :skills, :skills, column: 'parent_id'
  end
end
