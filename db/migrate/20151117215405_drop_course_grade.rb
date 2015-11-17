class DropCourseGrade < ActiveRecord::Migration
  def change
    drop_table :courses_grades
  end
end
