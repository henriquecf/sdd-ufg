class AddRolesToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :roles, :string
  end
end
