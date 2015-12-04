class KnowledgeLevel < ActiveRecord::Base
  validates :level, presence: true
  validates :teacher_id, uniqueness: { scope: :knowledge_group_id }

  belongs_to :teacher
  belongs_to :knowledge_group

  def name
    "#{teacher.name} / #{knowledge_group.name} => #{level}" if teacher && knowledge_group && level
  end
end
