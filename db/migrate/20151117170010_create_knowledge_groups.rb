class CreateKnowledgeGroups < ActiveRecord::Migration
  def change
    create_table :knowledge_groups do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
