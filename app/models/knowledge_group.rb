class KnowledgeGroup < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :grades
  has_many :knowledge_levels
  has_many :teachers, through: :knowledge_levels

  after_create :assign_teachers

  private

  def assign_teachers
    Teacher.all.each do |teacher|
      teacher.knowledge_groups << self
    end
  end
end
