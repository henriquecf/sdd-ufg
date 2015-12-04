class Teacher < ActiveRecord::Base
  validates :user, presence: true

  belongs_to :user
  has_many :klasses
  has_many :klass_intents
  has_many :intents, through: :klass_intents, source: :klass
  has_many :knowledge_levels
  has_many :knowledge_groups, through: :knowledge_levels

  serialize :roles

  after_create :assign_knowledge_groups

  def coordinator?
    roles.include?("coordinator")
  end

  rails_admin do
    [:id, :created_at, :updated_at, :roles, :klasses, :klass_intents, :intents, :knowledge_groups, :knowledge_levels].each do |field|
      configure field do
        hide
      end
    end
  end

  private

  def assign_knowledge_groups
    KnowledgeGroup.all.each do |knowledge_group|
      knowledge_group.teachers << self
    end
  end
end
