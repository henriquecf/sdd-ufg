class ChangeLevelFromKnowledgeLevel < ActiveRecord::Migration
  def change
    change_column :knowledge_levels, :level, :integer, default: 3
  end
end
