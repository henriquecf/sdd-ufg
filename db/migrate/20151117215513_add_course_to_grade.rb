class AddCourseToGrade < ActiveRecord::Migration
  def change
    add_reference :grades, :course, index: true, foreign_key: true
  end
end
