class KnowledgeLevel < ActiveRecord::Base
  validates :level, presence: true

  belongs_to :teacher
  belongs_to :knowledge_group
end
