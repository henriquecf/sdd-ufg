class KnowledgeLevel < ActiveRecord::Base
  validates :level, presence: true
  validates :teacher_id, uniqueness: { scope: :knowledge_group_id }

  belongs_to :teacher
  belongs_to :knowledge_group
end
