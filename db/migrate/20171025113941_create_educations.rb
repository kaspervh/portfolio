class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.integer :year
      t.string :name

      t.timestamps
    end
  end
end
