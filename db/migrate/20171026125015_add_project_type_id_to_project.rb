class AddProjectTypeIdToProject < ActiveRecord::Migration[5.1]
  def up
    add_column :projects, :project_type_id, :integer
  end

  def down
    remove_column :projects, :project_type_id, :integer
  end
end
