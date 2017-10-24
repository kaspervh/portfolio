class CreateWorkExps < ActiveRecord::Migration[5.1]
  def change
    create_table :work_exps do |t|
      t.date :year
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
