class AddReferenceFromGrade < ActiveRecord::Migration
  def change
    add_reference :grades, :knowledge_group, index: true, foreign_key: true
  end
end
