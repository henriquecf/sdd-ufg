class CreateKnowledgeLevel < ActiveRecord::Migration
  def change
    create_table :knowledge_levels do |t|
      t.integer :level, default: 1
      t.belongs_to :teacher, index: true, foreign_key: true
      t.belongs_to :knowledge_group, index: true, foreign_key: true
    end
  end
end
