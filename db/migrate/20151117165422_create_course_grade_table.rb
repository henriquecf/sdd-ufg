class CreateCourseGradeTable < ActiveRecord::Migration
  def change
    create_table :courses_grades do |t|
      t.belongs_to :course, index: true, foreign_key: true
      t.belongs_to :grade, index: true, foreign_key: true
    end
  end
end
