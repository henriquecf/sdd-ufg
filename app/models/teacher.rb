class Teacher < ActiveRecord::Base
  validates :user, presence: true

  belongs_to :user
  has_many :klasses
  has_many :klass_intents
  has_many :intents, through: :klass_intents, foreign_key: :klass_id, class_name: "KlassIntent"
  has_many :knowledge_levels
  has_many :knowledge_groups, through: :knowledge_levels

  serialize :roles

  after_create :assign_knowledge_groups

  def coordinator?
    roles.include?("coordinator")
  end

  private

  def assign_knowledge_groups
    KnowledgeGroup.all.each do |knowledge_group|
      knowledge_group.teachers << self
    end
  end
end
