class KnowledgeGroup < ActiveRecord::Base
  has_many :grades
  has_many :knowledge_levels
  has_many :teachers, through: :knowledge_levels
end
