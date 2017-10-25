class ChangeWorkExpsYear < ActiveRecord::Migration[5.1]
  def up
    remove_column :work_exps, :year
    add_column :work_exps, :year, :integer
  end

  def down
    #nothing

  end
end
