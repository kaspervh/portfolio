class CreateProjectLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :project_links do |t|
      t.integer :project_id
      t.string :link
      t.string :name

      t.timestamps
    end
  end
end
